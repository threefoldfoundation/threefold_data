module threefold_data

import os
import freeflowuniverse.crystallib.core.playbook
import freeflowuniverse.crystallib.core.pathlib
import freeflowuniverse.crystallib.data.paramsparser

const (
	people_dir = '${os.dir(os.dir(@FILE))}/content/people'
)

struct Person {
	PersonBase
mut:
	dir pathlib.Path
	links []Link
}

pub struct Link {
	label string
	url string
}

struct PersonBase {
pub mut:
	cid string
	name string
	bio string
	image_path string
	description string
	memberships []string
	categories []string
	organizations []string
	countries []string
	cities []string
}


pub fn read_persons(persons_path string) ![]Person {
	mut dir := pathlib.get_dir(
		path: persons_path
	)!
	path_list := dir.list(
		recursive: false
		dirs_only: true
	)!
	mut persons := []Person{}
	for person_dir in path_list.paths {
		persons << read_person(person_dir.path)!
	}
	return persons
}

/*
---
name:
description:
taxonomies:
    memberships: [team]
    categories: [foundation]
extra:
    organizations: []
    countries: []
    cities: []
    socialLinks: {
        LinkedIn: ,
        websites: ,
    }
---
*/

fn read_person(person_dir string) !Person {
	cid := person_dir.all_after_last('/')
	dir := pathlib.get_dir(
		path: person_dir
	)!
	mut page := pathlib.get_file(
		path: '${dir.path}/index.md'
	)!

	content_ := page.read()!
	start := content_.index('---') or {return error('front_matter not found')}
	content := content_[start+2..]

	mut person := Person{
		cid: cid
		dir: dir
	}
	mut links := false
	lines := content.split_into_lines()
	for i, line_ in lines {
		line := line_.trim_space()

		if links {
			if line == '{' { continue }
			if line == '}' {
				links = false
				continue
			}
			if !line.contains(':') {
				return error('parsing error ${line}')
			}
			person.links << Link{
				label: line.split(':')[0]
				url: line.split(':')[1..].join(':').trim_string_right(',')
			}
		}

		if line.starts_with('name:') {
			person.name = line.trim_string_left('name:').trim_space()
		} else if line.starts_with('description:') {
			person.description = line.trim_string_left('description:').trim_space()
		} else if line.starts_with('memberships:') {
			person.memberships = line.trim_string_left('memberships:').trim_space().trim('[]').split(',')
		} else if line.starts_with('categories:') {
			person.categories = line.trim_string_left('categories:').trim_space().trim('[]').split(',')
		} else if line.starts_with('organizations:') {
			person.organizations = line.trim_string_left('organizations:').trim_space().trim('[]').split(',')
		} else if line.starts_with('countries:') {
			person.countries = line.trim_string_left('countries:').trim_space().trim('[]').split(',')
		} else if line.starts_with('cities:') {
			person.cities = line.trim_string_left('cities:').trim_space().trim('[]').split(',')
		} else if line.starts_with('imgPath:') {
			person.image_path = line.trim_string_left('imgPath:').trim_space()
		} else if line.starts_with('socialLinks:') {
			links = true
		}
		// end of front matter
		if line == '---' {
			if i < lines.len - 1 {
				person.bio = lines[i+1..].join_lines().trim_space()
				return person
			}
		}
	}
	return person
}

pub fn (person Person) export(output_dir string) ! {
	println('exporting ${person.cid}')
	
	params := paramsparser.encode(person.PersonBase)!
	mut output := params.export(
		pre: '!!person_define'
		indent: '	'
		maxcolsize: 10
		skip_empty: true
	)
	person_dir := pathlib.get_dir(
		path: '${output_dir}/${person.cid}'
		empty: true
	)!
	mut person_file := pathlib.get_file(
		path: '${person_dir.path}/${person.cid}.md'
	)!

	for link in person.links {
		linkparams := paramsparser.encode(link)!
		link_action := linkparams.export(
			pre: '!!person_add_link cid: ${person.cid}'
			indent: '	'
			maxcolsize: 5
			skip_empty: true
		)
		output += '\n\n${link_action}'
	}
	person_file.write('```js\n${output.trim_space()}\n```')!

	
	mut page_file := pathlib.get_file(
		path: '${person_dir.path}/${person.cid}_page.md'
	)!

	image := pathlib.get('${person.dir.path}/${person.image_path}')
	image_path := image.path

	os.cp(image_path, '${person_dir.path}/${image_path.all_after_last('/')}') or { 
		println('error ${err}')
	}

	page_file.write(person.bio)!
}

pub fn people() ![]Person {
	mut book := playbook.new(path: people_dir)!
	actions := book.actions_find_by_name(
		name: 'person_define' 
	)!
	return actions.map(Person{PersonBase: it.params.decode[PersonBase]()!})
}
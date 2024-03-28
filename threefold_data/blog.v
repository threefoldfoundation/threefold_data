module threefold_data

import os
import freeflowuniverse.crystallib.core.playbook
import freeflowuniverse.crystallib.core.pathlib
import freeflowuniverse.crystallib.data.paramsparser
import time

const (
	blog_dir = '${os.dir(os.dir(@FILE))}/content/blog'
)

struct Post {
	PostBase
mut:
	content string
	dir pathlib.Path
	links []Link
}

struct PostBase {
pub mut:
	cid string
	title string
	date time.Time
	image_path string
	page_path string
	image_caption string
	description string
	tags []string
	categories []string
	authors []string
}


pub fn read_posts(posts_path string) ![]Post {
	mut dir := pathlib.get_dir(
		path: posts_path
	)!
	path_list := dir.list(
		recursive: false
		dirs_only: true
	)!
	mut posts := []Post{}
	for post_dir in path_list.paths {
		posts << read_post(post_dir.path)!
	}
	return posts
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

fn read_post(post_dir string) !Post {
	cid := post_dir.all_after_last('/')
	dir := pathlib.get_dir(
		path: post_dir
	)!
	mut page := pathlib.get_file(
		path: '${dir.path}/index.md'
	)!

	content_ := page.read()!
	start := content_.index('---') or {return error('front_matter not found')}
	content := content_[start+2..]

	mut post := Post{
		cid: cid
		dir: dir
	}
	mut links := false
	lines := content.split_into_lines()
	for i, line_ in lines {
		line := line_.trim_space()


		if line.starts_with('id:') {
			post.cid = line.trim_string_left('id:').trim_space()
		} else if line.starts_with('description:') {
			post.description = line.trim_string_left('description:').trim_space()
		} else if line.starts_with('date:') {
			date := line.trim_string_left('date:').trim_space()
			post.date = time.parse_iso8601(date)!
		} else if line.starts_with('image_caption:') {
			post.image_caption = line.trim_string_left('image_caption:').trim_space()
		} else if line.starts_with('title:') {
			post.title = line.trim_string_left('title:').trim_space()
		} else if line.starts_with('categories:') {
			post.categories = line.trim_string_left('categories:').trim_space().trim('[]').split(',')
		} else if line.starts_with('tags:') {
			post.tags = line.trim_string_left('tags:').trim_space().trim('[]').split(',')
		} else if line.starts_with('people:') {
			post.authors = line.trim_string_left('people:').trim_space().trim('[]').split(',')
		} else if line.starts_with('imgPath:') {
			post.image_path = line.trim_string_left('imgPath:').trim_space()
		}
		// end of front matter
		if line == '---' {
			if i < lines.len - 1 {
				post.content = lines[i+1..].join_lines().trim_space()
				return post
			}
		}
	}

	post.page_path = 'blog/${post.cid}.md'
	return post
}

pub fn (post Post) export(output_dir string) ! {
	println('exporting ${post.cid}')
	
	params := paramsparser.encode(post.PostBase)!
	mut output := params.export(
		pre: '!!post_define'
		indent: '	'
		maxcolsize: 10
		skip_empty: true
	)
	post_dir := pathlib.get_dir(
		path: '${output_dir}/${post.cid}'
		empty: true
	)!
	mut post_file := pathlib.get_file(
		path: '${post_dir.path}/${post.cid}.md'
	)!

	for link in post.links {
		linkparams := paramsparser.encode(link)!
		link_action := linkparams.export(
			pre: '!!post_add_link cid: ${post.cid}'
			indent: '	'
			maxcolsize: 5
			skip_empty: true
		)
		output += '\n\n${link_action}'
	}
	post_file.write('```js\n${output.trim_space()}\n```')!

	
	mut page_file := pathlib.get_file(
		path: '${post_dir.path}/${post.cid}_page.md'
	)!

	image := pathlib.get('${post.dir.path}/${post.image_path}')
	image_path := image.path

	os.cp(image_path, '${post_dir.path}/${image_path.all_after_last('/')}') or { 
		println('error ${err}')
	}

	page_file.write(post.content)!
}

pub fn blog() ![]Post {
	mut book := playbook.new(path: blog_dir)!
	actions := book.actions_find_by_name(
		name: 'post_define' 
	)!
	return actions.map(Post{PostBase: it.params.decode[PostBase]()!})
}
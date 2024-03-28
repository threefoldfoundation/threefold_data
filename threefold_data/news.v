module threefold_data

import os
import freeflowuniverse.crystallib.core.pathlib
import freeflowuniverse.crystallib.core.playbook
import freeflowuniverse.crystallib.data.paramsparser

const (
	news_dir = '${os.dir(os.dir(@FILE))}/content/newsroom'
)

// A news article
struct Article {
	ArticleBase
mut:
	content string
	dir pathlib.Path
	links []Link
}

struct ArticleBase {
pub mut:
	cid string
	authors []string
	title string
	image_path string
	file_path string
	image_caption string
	description string
	date string
	tags []string
	categories []string
}

pub fn read_articles(articles_path string) ![]Article {
	mut dir := pathlib.get_dir(
		path: articles_path
	)!
	path_list := dir.list(
		recursive: false
		dirs_only: true
	)!
	mut articles := []Article{}
	for article_dir in path_list.paths {
		articles << read_article(article_dir.path)!
	}
	return articles
}


pub fn read_article(article_dir string) !Article {
	cid := article_dir.all_after_last('/')
	dir := pathlib.get_dir(
		path: article_dir
	)!
	mut page := pathlib.get_file(
		path: '${dir.path}/index.md'
	)!

	content_ := page.read()!
	start := content_.index('---') or {return error('front_matter not found')}
	content := content_[start+2..]

	mut article := Article{
		cid: cid
		dir: dir
	}
	mut links := false
	lines := content.split_into_lines()
	for i, line_ in lines {
		line := line_.trim_space()

		if line.starts_with('title:') {
			article.title = line.trim_string_left('title:').trim_space()
		} else if line.starts_with('id:') {
			article.cid = line.trim_string_left('id:').trim_space()
			article.file_path = '${article.cid}_page.md'
		} else if line.starts_with('date:') {
			article.date = line.trim_string_left('date:').trim_space() 
		} else if line.starts_with('people:') {
			article.authors = line.trim_string_left('people:').trim_space().trim('[]').split(',')
		} else if line.starts_with('description:') {
			article.description = line.trim_string_left('description:').trim_space()
		} else if line.starts_with('image_caption:') {
			article.image_caption = line.trim_string_left('image_caption:').trim_space()
			if article.image_caption == '' {article.image_caption = article.title}
		} else if line.starts_with('news-category:') {
			article.categories = line.trim_string_left('news-category:').trim_space().trim('[]').split(',')
		} else if line.starts_with('tags:') {
			article.tags = line.trim_string_left('tags:').trim_space().trim('[]').split(',')
		} else if line.starts_with('imgPath:') {
			article.image_path = line.trim_string_left('imgPath:').trim_space()
		}
		// end of front matter
		if line == '---' {
			if i < lines.len - 1 {
				article.content = lines[i+1..].join_lines().trim_space()
				return article
			}
		}
	}
	return article
}

pub fn (article Article) export(output_dir string) ! {
	println('exporting ${article.cid} \n\n ${article.title}')

	
	params := paramsparser.encode(article.ArticleBase)!
	mut output := params.export(
		pre: '!!article_define'
		indent: '	'
		maxcolsize: 10
		skip_empty: true
	)
	article_dir := pathlib.get_dir(
		path: '${output_dir}/${article.cid}'
		empty: true
	)!

	println("oppps ${article.dir.path}, ${article_dir.path}")
	os.cp_all('${article.dir.path}', '${article_dir.path}', true)!
	mut article_file := pathlib.get_file(
		path: '${article_dir.path}/${article.cid}.md'
	)!

	os.rm('${article_dir.path}/index.md')!

	article_file.write('```js\n${output.trim_space()}\n```')!

	
	mut page_file := pathlib.get_file(
		path: '${article_dir.path}/${article.cid}_page.md'
	)!

	image := pathlib.get('${article.dir.path}/${article.image_path}')
	image_path := image.path

	// os.cp(image_path, '${article_dir.path}/${image_path.all_after_last('/')}') or { 
	// 	println('error ${err}')
	// }

	page_file.write(article.content)!
}

pub fn news() ![]Article {
	mut book := playbook.new(path: news_dir)!
	actions := book.actions_find_by_name(
		name: 'article_define' 
	)!
	return actions.map(Article{ArticleBase: it.params.decode[ArticleBase]()!})
}
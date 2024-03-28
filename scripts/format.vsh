#!/usr/bin/env -S v -w -enable-globals run
module main

import threefoldfoundation.threefold_data
import os
import freeflowuniverse.crystallib.core.pathlib
import freeflowuniverse.crystallib.data.paramsparser

const source_dir = '${os.dir(os.dir(os.dir(@FILE)))}/www_threefold_io/content'
const content_dir = '${os.dir(os.dir(@FILE))}/content'

fn main() {
	people_src := '${source_dir}/people'
	people_dest := '${content_dir}/people'
	persons := threefold_data.read_persons(people_src)!
	for person in persons {
		person.export(people_dest)!
	}

	news_src := '${source_dir}/newsroom'
	news_dest := '${content_dir}/newsroom'
	articles := threefold_data.read_articles(news_src)!
	for article in articles {
		article.export(news_dest)!
	}

	blog_src := '${source_dir}/blog'
	blog_dest := '${content_dir}/blogs'
	posts := threefold_data.read_posts(blog_src)!
	for post in posts {
		post.export(blog_dest)!
	}
}
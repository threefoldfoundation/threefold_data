#!/usr/bin/env -S v -w -enable-globals run

import threefoldfoundation.threefold_data

const(
	// people_dest := '${content_dir}/people'
)

news := threefold_data.news()!

mut actions := []string{}
for article in news {
	actions << '!!website.article_add pointer:\'newsroom:${article.cid}.md\''
}

println(actions.join('\n'))

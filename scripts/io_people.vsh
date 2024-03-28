#!/usr/bin/env -S v -w -enable-globals run

import threefoldfoundation.threefold_data

const(
	// people_dest := '${content_dir}/people'
)

people := threefold_data.people()!

mut actions := []string{}
for person in people {
	actions << '!!person_add page:\'people:${person.cid}.md\''
}

println(actions.join('\n'))

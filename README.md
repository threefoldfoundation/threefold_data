# Threefold Data Server

A gridsome project that exposes data through graphql server which can be used as a data source
for different projects

This projects represents a one source of truth for threefold data


### 1. Install Gridsome CLI tool if you don't have

`npm install --global @gridsome/cli`

### 2. Install dependencies

`npm install`

### 3. Run server

`gridsome explore --host 0.0.0.0 --port 8080`


## Data direction into your project

To direct respective content (blog/news/people/projects) to your project please open: 
`content/../../.md file`

then look for:

- blog

category: []

- news

category: []

- people:

memberships: []

- project:

tags: []

and provide your project's name (e.g. digitaltwin, cloud, tech, foundation etc.) in respective veriable.
Projects: 
- digitaltwin
- cloud
- farming
- tech
- foundation
- fairswap

Exapmle:

- "An escape from the Great Hack" blog post

category: [farming, cloud]

will show on farming.threefold.io and cloud.threefold.io websites

- "Take a look at the Artheon VR Museum!" news post

category: [digitaltwin, cloud]

will show on cloud.threefold.io and twin.threefold.io websites

- Kristof de Spiegeleer

memberships: [ambassador, farmer, foundation, tech, cofounders, fairswap]

will show on farming.threefold.io, cloud.threefold.io, fair-swap.org, twin.threefold.io, threefold.io websites

- AIQOM project

tags: [digitaltwin, grid, cloud]

will show on cloud.threefold.io and twin.threefold.io websites




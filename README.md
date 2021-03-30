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


## Pull data into your project

To pull respective content (blog/news/people/projects) to your project open: 
`content/../../.md file`

look for variable:

- `category: [ ]`

and provide (currently active) website's name:
- `twin`
- `cloud`
- `farming`
- `tech`
- `foundation`
- `marketplace`
- `aci`
- `mazraa`

We use tags to filter people/projects/blog/news:

people:
- `cofounders`
- `tech`
- `foundation`
- `ambassadors`
- `matchmakers`
- `farmers`
- `aci_members`
- `partners`
- `wisdom_council`

projects:
- `blockchain`
- `experience`
- `technology`
- `farming`
- `community`
- `infrastructure`
- `impact`

blog/news:
- can vary quite a lot depending on respective article or post
- please get in touch with sam or sacha if you are adding a blog or news post yourself



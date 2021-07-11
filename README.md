# Threefold Data Server

A gridsome project that exposes data through graphql server which can be used as a data source
for different projects

This projects represents a one source of truth for threefold data

## install in your www_... site

- open shell
- go to root of www_ site
- do ```curl https://raw.githubusercontent.com/threefoldfoundation/data_threefold/development/install.sh | bash```

this will prepare the site for gitpod

## details

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

We use tags to filter projects/blog/news and memberships to filter people:

memberships for people:
- `cofounders`
- `tech`
- `foundation`
- `ambassadors`
- `matchmakers`
- `farmers`
- `aci_members`
- `partners`
- `wisdom_council`
- `technology_council`
- `grid_guardians`

tags for projects:
- `blockchain`
- `experience`
- `technology`
- `farming`
- `community`
- `infrastructure`
- `impact`

tags for blog and news:
- can vary quite a lot depending on respective article or post
- please get in touch with sam or sacha if you are adding a blog or news post yourself



// This is where project configuration and plugin options are located.
// Learn more: https://gridsome.org/docs/config

// Changes here require a server restart.
// To restart press CTRL + C in terminal and run `gridsome develop`

module.exports = {
  siteName: 'Gridsome',
  plugins: [
    {
      use: '@gridsome/source-filesystem',
      options: {
          typeName: 'Person',
          path: './content/person/**/*.md',
          refs: {
              tags: {
                  typeName: 'PersonTag',
                  create: true
              },
              memberships: {
                  typeName: 'Membership',
                  create: true
              },
              projects: 'Project'
          },
      }
  },
  {
      use: '@gridsome/source-filesystem',
      options: {
          typeName: 'Blog',
          path: './content/blog/**/*.md',
          templates: {
              BlogPost: '/blog/post/:id'
          },
          refs: {
              authors: 'Person',
              tags: {
                  typeName: 'BlogTag',
                  create: true
              }
          }
      }
  },

  {
      use: '@gridsome/source-filesystem',
      options: {
          typeName: 'News',
          path: './content/news/**/*.md',
          refs: {
              authors: 'Person',
              tags: {
                  typeName: 'NewsTag',
                  create: true
              }
          }
      }
  },


  {
      use: '@gridsome/source-filesystem',
      options: {
          typeName: 'Project',
          path: './content/project/**/*.md',
          refs: {
              authors: 'Person',
              members: 'Person',

              tags: {
                  typeName: 'ProjectTag',
                  create: true
              }
          }
      }
  }
  ],
  transformers: {
    remark: {
        plugins: [
            '@noxify/gridsome-remark-table-align', ['@noxify/gridsome-remark-classes', {
                'table': 'table table-striped',
                'tableCell[align=center]': 'text-center',
                'tableCell[align=right]': 'text-right'
            }]
        ]
    }
},
  templates: {
    Blog: [{
        path: '/blog/post/:id'
    }],

    News: [{
        path: '/news/:id'
    }],

    Person: [{
        path: '/people/:id',
    }],
    
    BlogTag: [{
        path: '/tags/blog/:id',
    }],
    PersonTag: [{
        path: '/people/tags/:id',
    }],
    NewsTag: [{
        path: '/news/tags/:id',
    }],

    ProjectTag: [{
        path: '/projects/tags/:id',
    }],
    
    Membership: [{
        path: '/memberships/:id',
    }],

    Project: [{
        path: '/project/:id',
    }]
  }
}

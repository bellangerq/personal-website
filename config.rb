page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

activate :blog do |blog|
  blog.permalink = "blog/{title}.html"
  blog.paginate = true
  blog.per_page = 8
  blog.page_link = "{num}"
  blog.sources = "articles/{title}.html"
  blog.tag_template = "tag.html"
  blog.default_extension = ".md"
  blog.layout = "article"
end

set :markdown, gh_blockcode: true, fenced_code_blocks: true
set :markdown_engine, :redcarpet

activate :autoprefixer
activate :syntax

configure :development do
  activate :livereload
  livereload_css_target = 'stylesheets/site'
end

configure :build do
  activate :minify_css
  activate :minify_javascript
end

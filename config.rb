page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

activate :blog do |blog|
  blog.permalink = "blog/{title}.html"
  blog.paginate = true
  blog.per_page = 8
  blog.page_link = "{num}"
  blog.sources = "articles/{title}.html"
  blog.default_extension = ".md"
  blog.layout = "article"
  blog.new_article_template = File.expand_path('source/templates/article_template.erb', File.dirname(__FILE__))
end


set :markdown, gh_blockcode: true, fenced_code_blocks: true
set :markdown_engine, :redcarpet

activate :autoprefixer
activate :syntax
activate :directory_indexes

configure :development do
  activate :livereload
  livereload_css_target = 'stylesheets/site'
end

configure :build do
  activate :minify_css
  activate :minify_javascript
end

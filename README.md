# Personal website

This is the code of my personal website and blog https://quentin-bellanger.com. It is built with [Middleman](https://middlemanapp.com) and hosted on [Netlify](https://netlify.com).

## To do

- Generate anchor links to blog post titles.
- Add webmentions.
- Create logo (and update favicon)

## Development

### Install dependencies

```shell
bundle install
```

### Run local server

```shell
bundle exec middleman
```

### Build static

```shell
bundle exec middleman build
```

## Blogging

### Create a new article

```shell
bundle exec middleman article article-slug
```

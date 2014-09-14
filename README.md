# The Foundation

Public website for The Foundation, a [hackerspace](http://hackerspaces.org/wiki/Hackerspaces) based in Christchurch, New Zealand.

## Making changes

There are several ways to make changes to the site:

1. Editing a page through GitHub (ideal for small changes)
2. Editing a page through [Prose.io](http://prose.io/) (ideal for editing/creating pages)
3. Forking this repository and running the site locally (ideal for making structural or design changes to the site)

### Running the site locally

The Foundation's website is built on [GitHub Pages](http://pages.github.com/), which uses [Jekyll](http://jekyllrb.com/), the static site generator written in [Ruby](http://ruby-lang.org).

#### Linux and Mac OS X

Clone the repository, and run the setup script:

    bin/setup

This script will check your dependencies and walk you through the process to set up the site. It can safely be run multiple times.

#### Windows

[Install Ruby](http://rubyinstaller.org/) (2.1.0, 2.0.0, and 1.9.3 supported) and [Bundler](http://gembundler.com/).

Clone the repository, `cd` into the project directory and run:

    bundle install

Run the site with:

    bundle exec jekyll serve --watch

## Blog post

Blog posts live in `_posts`.

### Adding a blog post

![Screencast](http://i.imgur.com/JDDhTkN.gif)

To create a new blog post, add a file to the `_posts` directory with the format:

    <year>-<month>-<day>-<permalink>.md

For example, you might create file in `_posts` called:

    2014-09-14-hello-world.md

Inside the file you might have:

```md
---
title: Hello world
excerpt: A blog post
author: pete
---

Hello, world!
```

### Authors

A blog needs an author. Authors are defined in `_data/authors.yml`. You can add an entry like this:

```
pete:
  name: Pete Nicholls
  link: http://twitter.com/aupajo
```

### Formatting

Formatting is handled with [Markdown](http://daringfireball.net/projects/markdown/syntax). You can include HTML verbatim.

Code snippets can be done with syntax highlighting using Pygments.

```
{% highlight ruby %}
def some_code
  puts "OK"
end
{% endhighlight %}
```

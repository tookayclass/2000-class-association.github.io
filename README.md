# 2000 Class Association website

## How does this work?

This website is build using the static website generator Jekyll. That means that
all content is generated as static pages: all pages look the same for all
visitors and there is no dynamic content.

## Technically

- [GitHub Pages][ghp] is the service that runs [Jekyll][jekyll] to generate HTML
  pages from [Markdown-formatted][markdown] text files in this repository. Every
  time a change is made, a new set of HTML pages is generated. The [Ruby][ruby]
  libraries required to build the website are defined in the `Gemfile` file.

- The website is also rebuilt daily. This is done by the [Travis CI][travis] 
  service as configured in the `.travis.yml` file. The daily rebuild is required
  to update pages containing time-dependant information such as upcoming events.
  
  Daily build status: 
  [![Build Status](https://travis-ci.com/2000-class-association/2000-class-association.github.io.svg?branch=master)](https://travis-ci.com/2000-class-association/2000-class-association.github.io)

- General website configuration and meta data are included in the `_config.yml`
  file.

- Content can be edited through the [Forestry.io][forestry] service. This is a 
  user-friendly Content Management System built for static websites. The website
  administrator will need to assign the relevant permissions in Forestry.io to 
  edit this website. Alternatively, content could be directly edited from the 
  GitHub repository.

- In addition to HTML pages, the website generates an [RSS feed][rss]
  (`/feed.xml`) and an [iCalendar][ical] of upcoming events (`/events.ics`).

- The `CNAME` file contains the domain name this website responds to. DNS 
  settings must be configured as documented (see [Using a custom domain with 
  GitHub Pages][domain]).

## Terms and conditions

All copyrights are owned by the 2000 Class Association.

The source code of this website is released under the [GNU General Public 
License (GPL), version 3][gpl] .

The content of this website is released under the [Creative Commons Attribution 
4.0 International][cc] (CC BY 4.0) licence.

[ghp]: https://pages.github.com/ "GitHub Pages web host"
[jekyll]: https://jekyllrb.com/ "Jekyll static website generator"
[markdown]: https://daringfireball.net/projects/markdown/ "Markdown markup language"
[ruby]: https://www.ruby-lang.org/ "Ruby programming language"
[travis]: https://travis-ci.com "Travis CI"
[forestry]: https://forestry.io/ "Forestry.io"
[rss]: https://wikipedia.org/wiki/RSS  "RSS Wikipedia page"
[ical]: https://wikipedia.org/wiki/ICalendar "iCalendar Wikipedia page"
[domain]: https://help.github.com/en/articles/using-a-custom-domain-with-github-pages "GitHub Pages documentation"
[gpl]: https://www.gnu.org/licenses/gpl-3.0.en.html "GPL v3 licence"
[cc]: https://creativecommons.org/licenses/by/4.0/ "CC BY 4.0 licence"

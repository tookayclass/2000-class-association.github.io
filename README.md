# 2000 Class Association website

## How does this work?

This website is build using the static website generator Jekyll. That means that all content is generated as static pages: all pages look the same for all visitors and there is no dynamic content.

## Basic Tasks

Editing guidance can be found [here](./_docs/README.md).

## Technically

- [GitHub Pages][ghp] is the service that runs [Jekyll][jekyll] to generate HTML pages from [Markdown-formatted][markdown] text files in this repository. Every time a change is made, a new set of HTML pages is generated. The [Ruby][ruby] libraries required to build the website are defined in the `Gemfile` file.

- Every time a change is made, a GitHub Actions workflow will run verifying that all generated pages are valid HTML5. If this action fails, log messages should be inspected and content or page templates updated as required for the  validation test to pass.

- General website configuration and meta data are included in the `_config.yml` file.

- Content can be edited through the [Forestry.io][forestry] service. This is a  user-friendly Content Management System built for static websites. The website administrator will need to assign the relevant permissions in Forestry.io to  edit this website. Alternatively, content could be directly edited from the  GitHub repository.

- In addition to HTML pages, the website generates an [RSS feed][rss] (`/feed.xml`) and an [iCalendar][ical] of upcoming events (`/events.ics`).

- The `CNAME` file contains the domain name this website responds to. DNS  settings must be configured as documented (see [Using a custom domain with  GitHub Pages][domain]).

- To modify the design or functionality of the site it is best to set up a local development environment to allow you to make and test changes. This is a complex undertaking if you are unfamiliar with Software Development, Git or Jekyll but a basic how to guide is available [here](./_docs/Development Basics.md). 


## DNS settings

The 2000 Class Association owns the following domains:

| Domain                    | Purpose         | Registrar      | DNS hosting |
| ------------------------- | --------------- | -------------- | ----------- |
| `2000class.org`           | Primary website | Purely Domains | Namecheap   |
| `2000class.org.uk`        | UK alias        | Namecheap      | Namecheap   |
| `laser2000.org.uk`        | Historic        | Namecheap      | Namecheap   |
| `festivalofsailing.co.uk` | Event           | Namecheap      | Namecheap   |


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

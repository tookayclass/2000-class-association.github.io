---
title: Rules & Guides
---
This section of the site contains the various rules and guides that might be useful to our members or people interested in becoming members.



<!-- Get all the pages in the Rules&Guides folder and list them here -->
{%- assign rulesPages = site.pages | where_exp:"item", "item.url contains '/about/Rules&Guides/'" -%}
{%- for page in rulesPages -%}
    {% comment %} Exclude this page from the list --> {% endcomment %}
    {% if page.url != "/about/Rules&Guides/" %}
<p>
    <a href="{{ page.url }}">{{ page.title }}</a>
</p>
    {% endif %}
{%- endfor -%}
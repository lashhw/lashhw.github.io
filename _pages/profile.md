---
layout: null
permalink: /profile.md
sitemap: false
---

{::nomarkdown}
{% comment %}Preserve UTF-8 detection for viewers without an HTTP charset.{% endcomment -%}
{{- '%EF%BB%BF' | url_decode -}}
{%- assign about = site.pages | where: 'permalink', '/' | first -%}

# {{ site.first_name }} {{ site.last_name }} ({{ about.chinese_name }})

## Contact

- Email: {{ site.contact_note }}
- [CV]({{ site.data.socials.cv_pdf | absolute_url }})
- [GitHub](https://github.com/{{ site.data.socials.github_username }})
- [LinkedIn](https://www.linkedin.com/in/{{ site.data.socials.linkedin_username }})

## About

{% include bio.md %}

## Publications

Listed in reverse chronological order.
{%- assign years = site.data.bib | group_by_exp: 'entry', 'entry[1].year' | sort: 'name' | reverse -%}
{%- for year in years -%}
{%- for entry in year.items -%}
{%- assign paper = entry[1] -%}
{%- assign authors = paper.author | split: ' and ' %}

### {{ paper.title }}

**Authors:** {% for author in authors %}{% assign name = author | split: ',' %}{% if name.size == 2 %}{{ name[1] | strip }} {{ name[0] | strip }}{% else %}{{ author | strip }}{% endif %}{% unless forloop.last %}; {% endunless %}{% endfor %}

**Venue:** {{ paper.journal | default: paper.booktitle }}

**Year:** {{ paper.year }}
{%- if paper.abstract %}

**Abstract:** {{ paper.abstract | replace: '<span', ' <span' | strip_html | strip }}
{%- endif -%}
{%- capture links %}
{% if paper.doi %}
{{ '- ' }}[Paper](https://doi.org/{{ paper.doi }})
{%- endif -%}
{% if paper.video %}
{{ '- ' }}[Video]({{ paper.video | absolute_url }})
{%- endif -%}
{% if paper.code %}
{{ '- ' }}[Code]({{ paper.code | absolute_url }})
{%- endif -%}
{%- endcapture -%}
{{- links | rstrip -}}
{%- endfor -%}
{%- endfor %}

## Projects

Listed in reverse chronological order.
{%- assign years = site.data.projects | group_by: 'year' | sort: 'name' | reverse -%}
{%- for year in years -%}
{%- for project in year.items -%}
{%- assign paper = site.data.bib[project.bibkey] %}

### {{ project.title }}

**Context:** {{ project.venue }}

**Year:** {{ project.year }}

{{ project.description | replace: '<code>', '`' | replace: '</code>', '`' | strip_html }}
{%- if project.note %}

**Note:** {{ project.note }}
{%- endif %}
{%- if paper %}

**Related publication:** {{ paper.title }}
{%- endif -%}
{%- capture links %}
{% if paper.doi %}
{{ '- ' }}[Paper](https://doi.org/{{ paper.doi }})
{%- endif -%}
{% if paper.code %}
{{ '- ' }}[Code]({{ paper.code | absolute_url }})
{%- endif -%}
{% for link in project.links %}
{{ '- ' }}[{{ link[0] }}]({{ link[1] | absolute_url }})
{%- endfor -%}
{%- endcapture -%}
{{- links | rstrip -}}
{%- endfor -%}
{%- endfor %}

## Misc

{{ about.misc | strip }}
{:/nomarkdown}

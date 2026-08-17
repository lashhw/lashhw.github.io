---
layout: page
permalink: /projects/
title: Projects
nav: true
nav_order: 3
---

<!-- _pages/projects.md -->

{% assign years = site.data.projects | group_by: 'year' | sort: 'name' | reverse %}

<div class="publications">
  {% for year in years %}
    <h2 class="bibliography">{{ year.name }}</h2>
    <ol class="bibliography">
      {% for project in year.items %}
        {% include project_entry.liquid project=project %}
      {% endfor %}
    </ol>
  {% endfor %}
</div>

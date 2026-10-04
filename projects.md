---
layout: page
title: Projects
---

{% for project in site.data.projects %}
- [{{ project.name }}]({{ project.url }}){% if project.description %} — {{ project.description }}{% endif %}
{% endfor %}

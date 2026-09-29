---
layout: default
title: Project updates
permalink: /updates.html
---

# Project updates

Short progress notes, screenshots, technical decisions, and longer stories from the development of SOS Platform.

{% if site.posts.size > 0 %}
{% for post in site.posts %}
## [{{ post.title }}]({{ post.url | relative_url }})

<small>{{ post.date | date: "%B %-d, %Y" }}{% if post.kind %} · {{ post.kind }}{% endif %}</small>

{% if post.summary %}{{ post.summary }}{% elsif post.excerpt %}{{ post.excerpt | strip_html | truncatewords: 35 }}{% endif %}

{% endfor %}
{% else %}
The first project update is being prepared.
{% endif %}

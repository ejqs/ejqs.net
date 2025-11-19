---
layout: default
title: Tags
---

# Tags

<div class="tags-cloud" style="margin-bottom: 1.5rem;">
  <!-- <strong>Tags:</strong> -->
  <a href="#" onclick="window.location.hash=''; return false;" style="margin-right: 0.5rem;">#All</a>
  {% assign sorted_tags = site.tags | sort %}
  {% for tag in sorted_tags %}
    {% assign tag_name = tag | first %}
    <a href="#{{ tag_name | slugize }}" style="margin-right: 0.5rem; white-space: nowrap;">#{{ tag_name }}</a>
  {% endfor %}
</div>

<script>
  function filterTags() {
    var hash = window.location.hash.substring(1);
    var items = document.querySelectorAll('.tag-list');
    items.forEach(function(item) {
      if (!hash || item.querySelector('div[id="' + hash + '"]')) {
        item.style.display = 'block';
      } else {
        item.style.display = 'none';
      }
    });
  }
  window.addEventListener('hashchange', filterTags);
  window.addEventListener('load', filterTags);
</script>

<div id="tags-list">
{% for tag in site.tags %}
  {% assign tag_name = tag | first %}
  {% assign tag_name_pretty = tag_name | replace: "_", " " | capitalize %}
  <div class="tag-list">
    <div id="{{ tag_name | slugize }}"></div>
    <h3 class="post-list-heading line-bottom"> In #{{ tag_name }}: </h3>
    <ul class="post-list post-list-narrow">
     {% for post in site.tags[tag_name] %}
     <li>
       {%- assign date_format = site.minima.date_format | default: "%b %-d, %Y" -%}
       <b>
         <a href="{{ post.url | relative_url }}">
           {{ post.title | escape }}
         </a>
       </b> - <i>{{ post.date | date: date_format }}</i>
     </li>
     {% endfor %}
    </ul>
  </div>
{% endfor %}
</div>

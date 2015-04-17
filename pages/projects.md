---
layout: page-fullwidth
show_meta: false
title: "Cellulose - Projects"
subheadline: "Designed to make embedded development easier"
header:
   image_fullwidth: ""
permalink: "/projects/"
---

{% for link in site.data.projects %}
#### [{{link.title}}]({{site.improve_content}}/{{link.name}})
  {{link.description}}
{% endfor %}

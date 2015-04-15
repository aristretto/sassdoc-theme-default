<h3 class="item__heading">
  {% if item.access != "public" %}
    <span class="item__access">[{{ item.access }}]</span>
  {% endif %}

  {% if item.context.type == 'css' %}
  <a class="item__name" href="#{{ item.context.type }}-{{ item.context.uuid }}"><pre>{{ item.context.name|replace('\n',' ', 'g') }}</pre></a>
  {% else %}
  <a class="item__name" href="#{{ item.context.type }}-{{ item.context.name }}"><pre>{{ item.context.name|replace('\n',' ', 'g') }}</pre></a>
  {% endif %}

  {% if display.alias and item.aliased.length > 0 %}
    <span class="item__aliased">(aliased as
    {% for alias in item.aliased %}
      <a href="#{{ item.context.type }}-{{ alias }}"><code>{{ alias }}</code></a>
    {% endfor %}
    )</span>
  {% endif %}

  {% if item.alias %}
    <span class="item__alias">(alias for <a href="#{{ item.context.type }}-{{ item.alias }}"><code>{{ item.alias }}</code></a>)</span>
  {% endif %}
</h3>

{% if item.since.length == 1 %}
  <span class="item__since">Since {{ item.since[0].version }}{% if item.since[0].description %} &mdash; {{ item.since[0].description }}{% endif %}</span>
{% endif %}

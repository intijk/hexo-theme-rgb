{% import 'archivePost.swig' as archivePost %}
{% import 'header.swig' as postFrame %}

{% extends 'b.swig' %}
{% block header %}
{{ header.input("archives") }}
{% endblock %}
{% block content %}
{% for post in page.posts %} 
    {% if loop.first %} 
        {% set last = post.date.year() %}
        <section class="archive-wrap">
        <div class="archive-year-wrap container">
        <div class="col-md-12"> <a href="{{ url_for('archives/'+last) }}" class="archive-year">{{ last }} </a> </div>
        {{ archivePost.input(post, loop.index) }}
    {% elseif last != post.date.year() %} 
        </div>
        {% set last = post.date.year() %}
        <div class="archive-year-wrap container">
        <div class="col-md-12"><a href="{{ url_for('archives/'+last) }}" class="archive-year">{{ last }} </a></div>
        {{ archivePost.input(post, loop.index) }}
    {% else %}
        {{ archivePost.input(post, loop.index) }}
    {% endif %}
{% endfor %}
</div></section>
{% include 'pagination.swig' %}
{% endblock %}

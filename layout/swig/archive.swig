{% import 'archivePost.swig' as archivePost %}
{% extends 'b.swig' %}
{% block content %}
{% for post in page.posts %} 
    {% if loop.first %} 
        {% set last = post.date.year() %}
        <section class="archive-wrap">
        <div class="archive-year-wrap container">
        <div class="col-md-12"> <a href="{{ url_for('archives/'+last) }}" class="archive-year">{{ last }} </a> </div>
        {{ archivePost.input(post, loop.index0) }}
    {% elseif last != post.date.year() %} 
        </div>
        {% set last = post.date.year() %}
        <div class="archive-year-wrap container">
        <div class="col-md-12"><a href="{{ url_for('archives/'+last) }}" class="archive-year">{{ last }} </a></div>
        {{ archivePost.input(post, loop.index0) }}
    {% else %}
        {{ archivePost.input(post, loop.index0) }}
    {% endif %}
{% endfor %}
</div></section>
{% endblock %}

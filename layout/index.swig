{% import 'postFrame.swig' as postFrame %}
{% import 'header.swig' as header %}
{% extends 'b.swig' %}

{% block header %}
{{ header.input('home') }}
{% endblock %}

{% block content %}
<div class="container">
	{% for post in page.posts %}
		{{ postFrame.input(post, post.index_posts) }}
	{% endfor %}
</div>
{% include 'pagination.swig' %}
{% endblock %}

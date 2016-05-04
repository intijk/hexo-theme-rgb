{% import 'postFrame.swig' as postFrame %}
{% extends 'b.swig' %}

{% block content %}
<div class="container">
	{% for post in page.posts %}
		{{ postFrame.input(post, loop.index0) }}
	{% endfor %}
</div>
{% include 'pagination.swig' %}
{% endblock %}

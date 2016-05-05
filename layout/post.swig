{% import 'postFrame.swig' as postFrame %}
{% extends 'b.swig' %}

{% block content %}
<div class="container">
{{ postFrame.input(page, page.index_posts, 1) }}
</div>

{% endblock %}

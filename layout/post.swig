{% import 'postFrame.swig' as postFrame %}
{% extends 'b.swig' %}

{% block content %}
<div class="container">
{{ postFrame.input(page, 1, 1) }}
</div>
{% endblock %}

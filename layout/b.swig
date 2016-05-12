{% import 'header.swig' as header %}
{% import 'title.swig' as titlem %}
{% extends 'frame.swig' %}

{% block title %}
{{ titlem.input("") }}
{% endblock %}

{% block css %}
{% include 'css.swig' %}
{% endblock %}

{% block script %}
{% include 'script.swig' %}
{% endblock %}

{% block header %}
{{ header.input('b') }}
{% endblock %}

{% block footer %}
{% include 'footer.swig' %}
{% endblock %}

{% block endscript %}
<script src="{{ url_for("js/endscript.js") }}" ></script>
{% endblock %}



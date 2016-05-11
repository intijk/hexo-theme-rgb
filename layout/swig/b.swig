{% extends 'frame.swig' %}

{% block css %}
{% include 'css.swig' %}
{% endblock %}

{% block script %}
{% include 'script.swig' %}
{% endblock %}

{% block header %}
{% include 'header.swig' %}
<br/>
<br/>
{% endblock %}

{% block footer %}
{% include 'footer.swig' %}
{% endblock %}

{% block endscript %}
<script src="{{ config.url}}/js/endscript.js" ></script>
{% endblock %}



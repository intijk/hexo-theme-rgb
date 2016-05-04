{% extends 'frame.swig' %}

{% block css %}
{% include 'css.swig' %}
{% endblock %}

{% block script %}
{% include 'script.swig' %}
{% endblock %}

{% block header %}
<div class="container">
{% include 'header.swig' %}
</div>
{% include 'rgbbar.swig' %}
<br/>
<br/>
{% endblock %}

{% block footer %}
<br/>
<br/>
{% include 'footer.swig' %}
{% endblock %}

{% block endscript %}
<script src="js/endscript.js" ></script>
{% endblock %}



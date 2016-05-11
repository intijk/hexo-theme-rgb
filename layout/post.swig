{% import 'postFrame.swig' as postFrame %}
{% extends 'b.swig' %}

{% block content %}
<div class="container">
{{ postFrame.input(page, page.index_posts, 1) }}
</div>
<div class="container">
	<div class="col-md-12">
		<div class="itemframe {% if page.index_posts%3==0 %}red{% elif page.index_posts%3==1 %}green{% else %}blue{% endif %}-border">
			{% include 'disqus.swig' %}
		</div>
	</div>
</div>
{% endblock %}

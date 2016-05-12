{% macro input(caller) %}
<header>
	<div class="container">
		<a href="{{config.url}}" class="site-title">{{config.title}}</a>
		<span class="subtitle">{{config.subtitle}}</span>
		<nav class="navbar navbar-default">
			<ul class="nav navbar-nav">
				{% if caller=="home" %}
				<li class="active"><a href="/">Home</a></li>
				{% else %}
				<li><a href="/">Home</a></li>
				{% endif %}

				{% if caller=="archives" %}
				<li class="active"><a href="/archives">Archives</a></li>
				{% else %}
				<li><a href="/archives">Archives</a></li>
				{% endif %}

				{% if caller=="About" %}
				<li class="active"><a href="/about">About</a></li>
				{% else %}
				<li><a href="/about">About</a></li>
				{% endif %}
			</ul>	
		</nav>
	</div>
</header>
<table class="headerbar">
	<tr>
		<td class="red"></td>
		<td class="green"></td>
		<td class="blue"></td>
	</tr>
</table>
{% endmacro %}

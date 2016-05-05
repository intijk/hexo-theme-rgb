{% macro input(item, index, full) %}
{#
 color = 
 {% if index%3==0 %}red{% elif index%3==1 %}green{% else %}blue{% endif %}
#}
<div class="col-md-12">
	<div class="itemframe {% if index%3==0 %}red{% elif index%3==1 %}green{% else %}blue{% endif %}-border" >
		{# if post have picture, use radial #}
		{#
		<div class="radial itempic">
			<div class="circle">
				<div class="mask fast">
					<div class="fill">
					</div>
				</div>
				<div class="mask slow">
					<div class="fill">
					</div>
					<div class="fill fix">
					</div>
				</div>
				<a href="MicRobot.html">
					<img class="inset" src="image/microbot.jpg" />
				</a>
			</div>
		</div>
		#}
		<div class="itemtext">
			<h4 class="itemheader"><a class="{% if index%3==0 %}red{% elif index%3==1 %}green{% else %}blue{% endif %}-text" href="{{item.permalink}}">{{ item.title }}</a></h4>
			<div class="itemdate">{{ item.date | date('M d, Y') }}</div>
			<div style="clear:both;"></div>
			<p> {% if full %}
				{{ item.content }}
			{% elif item.excerpt %}
				{{ item.excerpt }}
			{% else %}
				{{ item.content }}
			{% endif %}
			</p>
		</div>
	</div>
</div>
{% endmacro %}

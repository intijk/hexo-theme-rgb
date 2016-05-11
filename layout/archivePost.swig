{% macro input(item, index) %}
{#
 color = 
 {% if index%3==0 %}red{% elif index%3==1 %}green{% else %}blue{% endif %}
#}
<div class="col-md-6">
	<div class="itemframe {% if index%3==0 %}red{% elif index%3==1 %}green{% else %}blue{% endif %}-border" >
    <div class="itemtext">
			<h4 class="archiveheader"><a class="{% if index%3==0 %}red{% elif index%3==1 %}green{% else %}blue{% endif %}-text" href="{{item.permalink}}">{{ item.title }}</a></h4>
			<div class="archivedate">{{ item.date | date('M d, Y') }}</div>
			<div style="clear:both;"></div>
		</div>
	</div>
</div>
{% endmacro %}

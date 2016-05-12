{% macro input(pageTitle) %}
{% if config.title %}
{% set siteTitle=config.title %}
{% elif theme.title %}
{% set siteTitle=theme.title %}
{% else %}
{% set siteTitle="" %}
{% endif %}

{% if pageTitle %}
{% set fullTitle=pageTitle+" | "+siteTitle %}
{% else %}
{% set fullTitle=siteTitle %}
{% endif %}
{{ fullTitle }}

{% endmacro %}

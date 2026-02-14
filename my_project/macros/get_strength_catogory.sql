{% macro get_strength_category(attack_value) %}
  case when lower({{attack_value}}) like '%snow%' then 'Strong'
              when lower({{attack_value}}) like '%magic%' then 'Average'
              when lower({{attack_value}}) like '%stance%' then 'Weak'
              else 'Hidden' end
{% endmacro %}
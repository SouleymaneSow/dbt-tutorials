{% macro double_salary(salary_column) %}
SELECT 
  first_name, 
  last_name, 
  genre,
  salary,
  salary*2 as double_salary
from {{ref('finale')}}
{% endmacro %}
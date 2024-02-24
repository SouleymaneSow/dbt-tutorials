{% macro double_salary(salary_column) %}
  ({{salary_column}} * 2)
{% endmacro %}
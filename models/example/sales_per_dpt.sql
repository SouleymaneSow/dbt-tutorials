{{ config(materialized='table') }}

-- Create the table using a Common Table Expression (CTE)
WITH department_avg_salary AS (
    SELECT s.department, round(AVG(s.salary),0) AS avg_salary
    FROM dbt_jules.sales as s
    GROUP BY department
)
SELECT * FROM department_avg_salary
  
{{ config(materialized='table') }}

-- Create the table using a Common Table Expression (CTE)
WITH department_avg_salary AS (
    SELECT department, round(AVG(salary),0) AS avg_salary
    FROM {{source('jule','sale')}} 
    GROUP BY department
)
SELECT * FROM department_avg_salary
  
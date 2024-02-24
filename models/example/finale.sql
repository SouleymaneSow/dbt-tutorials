{{ config(materialized='table') }}

SELECT
    t.*,
    s.postal, s.genre
FROM
     db.dbt_jules.sales t
LEFT JOIN
    {{ ref('complements') }} s
ON
    t.id = s.id
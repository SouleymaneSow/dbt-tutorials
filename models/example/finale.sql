{{ config(materialized='table') }}

SELECT
    t.*,
    s.postal, s.genre
FROM
     {{source('jule','sale')}} t
LEFT JOIN
    {{ ref('complements') }} s
ON
    t.id = s.id
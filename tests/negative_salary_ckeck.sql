SELECT first_name, last_name
FROM {{ref('finale')}}
where salary < 0
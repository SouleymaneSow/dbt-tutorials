select 
   f.first_name, 
   f.last_name, 
   f.genre,
   f.salary,
   {{ double_salary('f.salary') }} as db_salary
from {{ref('finale')}} f
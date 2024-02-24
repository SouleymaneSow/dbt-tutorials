SELECT 
            f.department,
            round(AVG(f.salary),0) AS avg_salary
            
    FROM {{ref('finale')}} f
    
    GROUP BY 1 
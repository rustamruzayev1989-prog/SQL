SELECT 
    employee_id,
    first_name,
    last_name,
    hire_date,
    CASE
        WHEN DATEDIFF(CURRENT_DATE, hire_date)/365 < 1 THEN 'New Hire'
        WHEN DATEDIFF(CURRENT_DATE, hire_date)/365 >= 1 
             AND DATEDIFF(CURRENT_DATE, hire_date)/365 < 5 THEN 'Junior'
        WHEN DATEDIFF(CURRENT_DATE, hire_date)/365 >= 5 
             AND DATEDIFF(CURRENT_DATE, hire_date)/365 < 10 THEN 'Mid-Level'
        WHEN DATEDIFF(CURRENT_DATE, hire_date)/365 >= 10 
             AND DATEDIFF(CURRENT_DATE, hire_date)/365 < 20 THEN 'Senior'
        ELSE 'Veteran'
    END AS employment_stage
FROM Employees
ORDER BY hire_date;

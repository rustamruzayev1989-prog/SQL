SELECT 
    employee_id,
    first_name,
    last_name,
    hire_date,
    FLOOR(DATEDIFF(CURRENT_DATE, hire_date) / 365) AS years_of_service
FROM Employees
WHERE FLOOR(DATEDIFF(CURRENT_DATE, hire_date) / 365) > 10
  AND FLOOR(DATEDIFF(CURRENT_DATE, hire_date) / 365) < 15
ORDER BY years_of_service DESC;

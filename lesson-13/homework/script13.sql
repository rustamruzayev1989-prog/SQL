SELECT 
    department_id,
    COUNT(*) AS total_employees,
    ROUND(
        100.0 * SUM(CASE WHEN DATEDIFF(CURRENT_DATE, hire_date)/365 > 3 THEN 1 ELSE 0 END) 
        / COUNT(*), 2
    ) AS pct_more_than_3_years
FROM Employees
GROUP BY department_id
ORDER BY department_id;

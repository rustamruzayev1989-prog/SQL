| EmployeeID | EmployeeName | Salary |
| ---------- | ------------ | ------ |
| 1          | Alice        | 55000  |
| 2          | Bob          | 48000  |
| 3          | Charlie      | 72000  |
| 4          | Diana        | 60000  |
| 5          | Evan         | 45000  |

WITH AvgSalaryCTE AS (
    SELECT 
        AVG(Salary) AS AvgSalary
    FROM Employees
)
SELECT 
    e.EmployeeID,
    e.EmployeeName,
    e.Salary
FROM Employees e
CROSS JOIN AvgSalaryCTE a
WHERE e.Salary > a.AvgSalary;

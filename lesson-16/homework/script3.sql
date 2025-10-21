| EmployeeID | EmployeeName | Salary |
| ---------- | ------------ | ------ |
| 1          | Alice        | 60000  |
| 2          | Bob          | 55000  |
| 3          | Charlie      | 70000  |
| 4          | Diana        | 65000  |
WITH AvgSalaryCTE AS (
    SELECT 
        AVG(Salary) AS AvgSalary
    FROM Employees
)
SELECT 
    AvgSalary
FROM AvgSalaryCTE;

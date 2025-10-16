CREATE TABLE Departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

CREATE TABLE Employees (
    emp_id INT,
    emp_name VARCHAR(50)
);
SELECT 
    d.dept_name AS Отдел,
    e.emp_name AS Сотрудник
FROM Departments d
CROSS JOIN Employees e;

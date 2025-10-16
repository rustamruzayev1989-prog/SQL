CREATE TABLE Departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

CREATE TABLE Employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);
SELECT 
    e.emp_name AS Сотрудник,
    d.dept_name AS Отдел
FROM Employees e
INNER JOIN Departments d ON e.dept_id = d.dept_id;

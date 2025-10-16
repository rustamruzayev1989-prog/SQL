CREATE TABLE Сотрудники (
    id INT,
    name VARCHAR(50),
    deptID INT,
    salary DECIMAL(10,2)
);
SELECT 
    deptID AS Отдел,
    MIN(salary) AS Минимальная_зарплата,
    MAX(salary) AS Максимальная_зарплата
FROM Сотрудники
GROUP BY deptID;

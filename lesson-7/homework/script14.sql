CREATE TABLE Сотрудники (
    id INT,
    name VARCHAR(50),
    deptID INT,
    salary DECIMAL(10,2)
);
SELECT 
    deptID AS Отдел,
    AVG(salary) AS Средняя_зарплата
FROM Сотрудники
GROUP BY deptID;

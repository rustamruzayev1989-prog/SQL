CREATE TABLE Сотрудники (
    id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);
SELECT 
    department AS Отдел,
    COUNT(*) AS Количество_сотрудников
FROM Сотрудники
GROUP BY department;

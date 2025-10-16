CREATE TABLE Сотрудники (
    id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);
SELECT 
    COUNT(*) AS Количество_сотрудников_кадров
FROM Сотрудники
WHERE department = 'Отдел кадров';

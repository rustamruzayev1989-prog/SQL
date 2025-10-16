CREATE TABLE Сотрудники (
    id INT,
    name VARCHAR(50),
    deptID INT,
    salary DECIMAL(10,2)
);
SELECT 
    deptID,
    COUNT(*) AS Количество_сотрудников
FROM Сотрудники
GROUP BY deptID
HAVING COUNT(*) > 5;

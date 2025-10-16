CREATE TABLE Сотрудники (
    id INT,
    name VARCHAR(50),
    position VARCHAR(50),
    salary DECIMAL(10,2)
);
SELECT MAX(salary) AS Максимальная_зарплата
FROM Сотрудники;

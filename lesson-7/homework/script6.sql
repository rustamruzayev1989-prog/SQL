CREATE TABLE Сотрудники (
    id INT,
    name VARCHAR(50),
    position VARCHAR(50),
    age INT,
    salary DECIMAL(10,2)
);
SELECT AVG(age) AS Средний_возраст
FROM Сотрудники;

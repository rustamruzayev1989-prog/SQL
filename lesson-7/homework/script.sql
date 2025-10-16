CREATE TABLE Товары (
    id INT,
    name VARCHAR(50),
    price DECIMAL(10,2)
);
SELECT *
FROM Товары
WHERE price = (SELECT MIN(price) FROM Товары);

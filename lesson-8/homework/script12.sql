CREATE TABLE Products (
    id INT,
    name VARCHAR(50)
);

CREATE TABLE Products_Discounted (
    id INT,
    name VARCHAR(50)
);
SELECT name AS Название_товара
FROM Products

UNION

SELECT name
FROM Products_Discounted;

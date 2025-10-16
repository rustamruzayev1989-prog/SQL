CREATE TABLE Продажи (
    id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    sale_date DATE
);
SELECT 
    YEAR(sale_date) AS Год,
    SUM(quantity * price) AS Общий_объем_продаж
FROM Продажи
GROUP BY YEAR(sale_date)
ORDER BY Год;

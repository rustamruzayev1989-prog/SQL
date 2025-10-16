SELECT c.имя AS Клиент, s.id_продукта AS Продукт, SUM(s.сумма) AS Общая_сумма
FROM Продажи s
JOIN Клиенты c ON s.id_клиента = c.id
GROUP BY c.имя, s.id_продукта
HAVING SUM(s.сумма) >= 500;

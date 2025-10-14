SELECT *
FROM Заказы
WHERE Дата_заказа BETWEEN DATEADD(DAY, -180, (SELECT MAX(LATEST_DATE) FROM Заказы))
                     AND (SELECT MAX(LATEST_DATE) FROM Заказы);

SELECT z.*
FROM Заказы z
JOIN Платежи p ON z.id = p.id_заказа
GROUP BY z.id, z.сумма
HAVING SUM(p.сумма_оплаты) < z.сумма;

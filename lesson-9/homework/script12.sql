SELECT z.*
FROM Заказы z
JOIN Продукты p ON z.id_продукта = p.id
WHERE z.количество > p.количество_на_складе;

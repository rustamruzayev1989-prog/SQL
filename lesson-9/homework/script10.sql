SELECT z.*
FROM Заказы z
JOIN Товары t ON z.id_товара = t.id
WHERE t.цена > 100;

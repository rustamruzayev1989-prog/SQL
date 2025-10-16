SELECT z.*
FROM Заказы z
JOIN Клиенты c ON z.id_клиента = c.id
WHERE c.страна = 'Германия'
  AND z.сумма > 100;

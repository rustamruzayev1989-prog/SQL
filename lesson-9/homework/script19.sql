SELECT s.*
FROM Продажи s
JOIN Клиенты c ON s.id_клиента = c.id
WHERE c.страна = 'USA';

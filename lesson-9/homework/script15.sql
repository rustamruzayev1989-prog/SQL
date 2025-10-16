SELECT p.название AS Продукт, s.название AS Поставщик
FROM Продукты p
JOIN Поставщики s ON p.id_поставщика = s.id
WHERE s.название LIKE '%Tech%';

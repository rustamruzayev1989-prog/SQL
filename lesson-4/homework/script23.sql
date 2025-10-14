SELECT *
FROM Товары
WHERE Цена < 0.1 * (SELECT AVG(Цена) FROM Товары);

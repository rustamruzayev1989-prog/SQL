SELECT *
FROM Товары
WHERE Цена <= 1000
  AND КоличествоНаСкладе > 50
ORDER BY КоличествоНаСкладе ASC;

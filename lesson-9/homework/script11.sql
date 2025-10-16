SELECT s.имя AS Сотрудник, o.название AS Отдел
FROM Сотрудники s
JOIN Отделы o ON s.id_отдела <> o.id;

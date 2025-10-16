SELECT st.имя AS Студент, c.название AS Курс
FROM Зачисления z
JOIN Студенты st ON z.id_студента = st.id
JOIN Курсы c ON z.id_курса = c.id;

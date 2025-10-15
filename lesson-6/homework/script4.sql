SELECT *
FROM section1
WHERE id = (SELECT MIN(id) FROM section1);

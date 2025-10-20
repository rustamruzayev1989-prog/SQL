SELECT *
FROM testDots
WHERE (LENGTH(Vals) - LENGTH(REPLACE(Vals, '.', ''))) > 2;

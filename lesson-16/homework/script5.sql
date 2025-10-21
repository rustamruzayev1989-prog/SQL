WITH RECURSIVE Doubles AS (
    SELECT 1 AS num
    UNION ALL
    SELECT num * 2
    FROM Doubles
    WHERE num * 2 < 1000000
)
SELECT num
FROM Doubles;

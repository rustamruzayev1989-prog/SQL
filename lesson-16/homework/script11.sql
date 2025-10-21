| Number |
| ------ |
| 1      |
| 2      |
| 3      |
| 4      |
| 5      |
WITH RECURSIVE FactorialCTE AS (
    -- Anchor: start with the first number and factorial = 1
    SELECT 
        Number,
        Number AS n,
        1 AS Factorial
    FROM Numbers1
    WHERE Number = 1
    
    UNION ALL

    -- Recursive step: multiply factorial by next number
    SELECT 
        n.Number,
        f.n + 1,
        f.Factorial * (f.n + 1)
    FROM FactorialCTE f
    JOIN Numbers1 n ON n.Number > f.n
)
SELECT 
    n.Number,
    MAX(f.Factorial) AS Factorial
FROM Numbers1 n
JOIN FactorialCTE f ON n.Number >= f.n
GROUP BY n.Number
ORDER BY n.Number;

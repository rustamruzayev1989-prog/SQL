-- Produces rows 1..1000
WITH RECURSIVE nums(n) AS (
  SELECT 1
  UNION ALL
  SELECT n + 1 FROM nums WHERE n < 1000
)
SELECT n
FROM nums
ORDER BY n;

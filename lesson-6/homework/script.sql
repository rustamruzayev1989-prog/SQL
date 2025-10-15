SELECT LEAST(col1, col2) AS col1, GREATEST(col1, col2) AS col2
FROM InputTbl
GROUP BY LEAST(col1, col2), GREATEST(col1, col2);

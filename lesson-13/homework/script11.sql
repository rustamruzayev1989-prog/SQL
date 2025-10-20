SELECT category,
       GROUP_CONCAT(value ORDER BY value SEPARATOR ', ') AS concatenated_values
FROM DMLTable
GROUP BY category;

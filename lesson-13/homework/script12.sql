SELECT *
FROM employees
WHERE (LENGTH(first_name) + LENGTH(last_name)
       - LENGTH(REPLACE(CONCAT(first_name, last_name), 'a', ''))
      ) >= 3;

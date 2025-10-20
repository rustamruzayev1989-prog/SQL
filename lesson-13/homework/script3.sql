SELECT first_name AS "First Name",
       LENGTH(first_name) AS "Name Length"
FROM employees
WHERE first_name LIKE 'A%'
   OR first_name LIKE 'J%'
   OR first_name LIKE 'M%'
ORDER BY first_name;

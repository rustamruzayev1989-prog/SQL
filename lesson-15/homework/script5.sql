SELECT c.customer_id, c.name
FROM customers c
LEFT JOIN orders o
  ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;

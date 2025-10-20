SELECT *
FROM Orders
WHERE delivery_state = 'Texas'
  AND customer_id IN (
      SELECT DISTINCT customer_id
      FROM Orders
      WHERE delivery_state = 'California'
  );

SELECT o.id AS OrderID,
       o.order_date AS OrderDate,
       p.payment_date AS PaymentDate,
       p.amount AS Amount
FROM Orders o
JOIN Payments p ON o.id = p.order_id;

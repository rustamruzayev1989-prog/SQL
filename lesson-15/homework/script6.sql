SELECT p.id, p.product_name, p.price, p.category_id
FROM products p
JOIN (
    SELECT category_id, MAX(price) AS max_price
    FROM products
    GROUP BY category_id
) pm
ON p.category_id = pm.category_id AND p.price = pm.max_price;

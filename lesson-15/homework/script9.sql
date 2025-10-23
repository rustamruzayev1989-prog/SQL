SELECT id, product_name, price, category_id
FROM (
    SELECT 
        id,
        product_name,
        price,
        category_id,
        RANK() OVER (PARTITION BY category_id ORDER BY price DESC) AS price_rank
    FROM products
) ranked_products
WHERE price_rank = 3;

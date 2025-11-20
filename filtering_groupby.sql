-- Get total orders for each user
SELECT 
    u.name, COUNT(o.order_id) AS total_orders
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_id
HAVING total_orders >= 1;

-- Get products above price 200
SELECT * FROM products
WHERE price > 200
ORDER BY price DESC;

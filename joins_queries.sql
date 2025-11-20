-- Get all orders with user and product details
SELECT 
    o.order_id, u.name AS customer, p.name AS item, 
    p.price, o.quantity, o.order_date
FROM orders o
INNER JOIN users u ON o.user_id = u.user_id
INNER JOIN products p ON o.product_id = p.product_id;

-- Users who placed no orders (LEFT JOIN)
SELECT u.name, o.order_id
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
WHERE o.order_id IS NULL;

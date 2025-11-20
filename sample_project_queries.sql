-- Login verification
SELECT * FROM users 
WHERE email = 'test@gmail.com' AND password = '12345';

-- Fetch order history
SELECT 
    o.order_id, p.name, p.price, o.quantity, o.order_date
FROM orders o
JOIN products p ON o.product_id = p.product_id
WHERE o.user_id = 1;

-- Product list by category
SELECT * FROM products WHERE category = 'Snacks';

SELECT
    SUM(o.qty * o.price) AS total_revenue,
    SUM((o.price - p.cost) * o.qty) AS total_profit,
    COUNT(DISTINCT o.order_id) AS total_orders,
    COUNT(DISTINCT o.customer_id) AS total_customers
FROM orders o
JOIN products p ON o.product_id = p.product_id
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_date BETWEEN '2025-01-01' AND '2025-01-04';

SELECT
    o.order_date,
    SUM(o.qty * o.price) AS daily_revenue
FROM orders o
GROUP BY o.order_date
ORDER BY o.order_date;

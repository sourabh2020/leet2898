-- SELECT * FROM customer_orders;

WITH first_visit AS(
SELECT customer_id, MIN(order_date) AS min_order_date
FROM customer_orders
GROUP BY customer_id
)
SELECT co.order_date,
SUM(CASE WHEN co.order_date=fv.min_order_date THEN 1 ELSE 0 END) AS count_first_visit,
SUM(CASE WHEN co.order_date!=fv.min_order_date THEN 1 ELSE 0 END) AS count_repeat_visit
FROM customer_orders co 
INNER JOIN first_visit fv ON co.customer_id=fv.customer_id
GROUP BY co.order_date;

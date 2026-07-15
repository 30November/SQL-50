-- MYSQL, ... Oracle, PostgreSQL
WITH first_order AS
(
    Select customer_id cid, MIN(order_date) od, MIN(customer_pref_delivery_date) pdd 
    FROM Delivery
    GROUP BY customer_id
)

SELECT
    ROUND(COUNT(CASE WHEN od=pdd THEN 1 ELSE NULL END)/COUNT(*) * 100,2) immediate_percentage -- only change here for Postgres
FROM first_order;
--
--
-- MYSQL, Oracle,
SELECT
    p.product_id, COALESCE(ROUND(
        SUM(units*price)/SUM(units),2),0) average_price
FROM
    Prices p
LEFT JOIN
    UnitsSold u
ON
    (p.product_id = u.product_id
    AND u.purchase_date BETWEEN p.start_date AND p.end_date)
GROUP BY
    p.product_id;

-- PostgreSQL
SELECT
    p.product_id, COALESCE(ROUND(
        SUM(units*price)/SUM(units)::numeric,2),0) average_price -- formatting
FROM
    Prices p
LEFT JOIN
    UnitsSold u
ON
    (p.product_id = u.product_id
    AND u.purchase_date BETWEEN p.start_date AND p.end_date)
GROUP BY
    p.product_id;
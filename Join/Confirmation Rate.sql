-- MYSQL, Oracle
SELECT
    user_id, ROUND(COUNT(
        CASE action 
        WHEN 'confirmed' 
        THEN 1 
        ELSE NULL END)/ COUNT(*),2) confirmation_rate
FROM
    Signups s
LEFT JOIN
    Confirmations c
USING
    (user_id)
GROUP BY
    user_id;

-- Postgres
-- same just change in confirmation_rate part
SELECT
    user_id, ROUND((COUNT(
        CASE action 
        WHEN 'confirmed' 
        THEN 1 
        ELSE NULL END)/ COUNT(*)::numeric),2) confirmation_rate -- numeric added
FROM
    Signups s
LEFT JOIN
    Confirmations c
USING
    (user_id)
GROUP BY
    user_id;

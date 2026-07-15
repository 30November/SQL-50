-- MYSQL, , 
SELECT
   activity_date day, COUNT(DISTINCT user_id) active_users
FROM
    Activity
WHERE
    DATEDIFF("2019-07-27",activity_date) BETWEEN 0 AND 29 -- look here
GROUP BY
    activity_date;

-- Oracle
SELECT
   TO_CHAR(activity_date,'YYYY-MM-DD') day, COUNT(DISTINCT user_id) active_users -- I THINK THEY HAVE MADE MISTAKE ONTO THIS
FROM
    Activity
WHERE
    TO_DATE('2019-07-27','YYYY-MM-DD') - activity_date BETWEEN 0 AND 29
GROUP BY
    activity_date;

-- PostgreSQL
SELECT
   activity_date AS day, COUNT(DISTINCT user_id) active_users
FROM
    Activity
WHERE
    ('2019-07-27'::date - activity_date) BETWEEN 0 AND 29 -- look here string to date
GROUP BY
    activity_date;
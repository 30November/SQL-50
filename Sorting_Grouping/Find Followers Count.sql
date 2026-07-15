-- MYSQL, Oracle, PostgreSQL
SELECT
    user_id, count(*) followers_count
FROM
    Followers
GROUP BY
    user_id
Order BY
    user_id;
-- MYSQL
SELECT
    ROUND(COUNT(games_played)/COUNT(DISTINCT a1.player_id),2) fraction
FROM
    (SELECT player_id, MIN(event_date) first_date
    FROM Activity
    GROUP By player_id) a1
LEFT JOIN
    Activity a2
ON (a1.player_id = a2.player_id AND a1.first_date + INTERVAL 1 DAY = a2.event_date); -- look here

-- Oracle
SELECT
    ROUND(COUNT(games_played)/COUNT(DISTINCT a1.player_id),2) fraction
FROM
    (SELECT player_id, MIN(event_date) first_date
    FROM Activity
    GROUP By player_id) a1
LEFT JOIN
    Activity a2
ON (a1.player_id = a2.player_id AND a1.first_date + 1 = a2.event_date); -- look here

-- PostgreSQL
SELECT
    ROUND(COUNT(games_played)/COUNT(DISTINCT a1.player_id),2) fraction
FROM
    (SELECT player_id, MIN(event_date) first_date
    FROM Activity
    GROUP By player_id) a1
LEFT JOIN
    Activity a2
ON (a1.player_id = a2.player_id AND a1.first_date + INTERVAL '1 DAY' = a2.event_date); -- look here
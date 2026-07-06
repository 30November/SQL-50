--MySQL, , 
SELECT r.id
FROM Weather r
JOIN Weather l
ON r.recordDate = l.recordDate + INTERVAL 1 DAY
WHERE r.temperature > l.temperature;

-- Oracle
SELECT r.id
FROM Weather r
JOIN Weather l
ON r.recordDate = l.recordDate + 1
WHERE r.temperature > l.temperature;

--Postgres
SELECT r.id
FROM Weather r
JOIN Weather l
ON r.recordDate = l.recordDate + INTERVAL '1 DAY'
WHERE r.temperature > l.temperature;

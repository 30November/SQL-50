-- MYSQL, PostgreSQL
SELECT * FROM Cinema
WHERE id%2 = 1
AND description <> 'boring'
order by rating desc;

-- Oracle
SELECT * FROM Cinema
WHERE MOD(id,2) = 1 -- mod op % not present
AND description <> 'boring'
order by rating desc;

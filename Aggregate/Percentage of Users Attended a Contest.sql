-- MYSQL, Oracle
SELECT contest_id, ROUND(COUNT(*)/(select count(*) from Users)*100,2) percentage 
FROM Register
GROUP BY contest_id
ORDER By percentage desc, contest_id;


-- PostgreSQL
SELECT contest_id, ROUND(COUNT(*)/(select count(*) from Users)::numeric*100,2) percentage 
FROM Register
GROUP BY contest_id
ORDER By percentage desc, contest_id;
-- MYSQL, Oracle
SELECT
    query_name , 
    ROUND(AVG(rating/position),2) quality,  
    ROUND(COUNT(CASE WHEN rating < 3 THEN 1 ELSE NULL END)/COUNT(*)*100 ,2) poor_query_percentage
FROM Queries
GROUP By query_name;

-- PostgreSQL
SELECT
    query_name , 
    ROUND(AVG(rating/position::numeric),2) quality,  
    ROUND(COUNT(CASE WHEN rating < 3 THEN 1 ELSE NULL END)/COUNT(*)::numeric*100 ,2) poor_query_percentage
FROM Queries
GROUP By query_name;

--MySQL, Oracle, Postgres

SELECT p.product_name, s.year, s.price
FROM Sales s
INNER JOIN Product p --INNER JOIN
ON s.product_id = p.product_id;

-- same
SELECT p.product_name, s.year, s.price
FROM Sales s
JOIN Product p -- JOIN (default to INNER JOIN)
ON s.product_id = p.product_id;

-- same
SELECT p.product_name, s.year, s.price
FROM Sales s
JOIN Product p 
USING (product_id); -- Concise way if same column name

--same
SELECT product_name, year, price
FROM Sales
JOIN Product
USING (product_id);

-- same
SELECT product_name, year, price
FROM Sales
NATURAL JOIN Product; -- Natural JOIN


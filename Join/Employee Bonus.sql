-- MYSQL, Oracle, PostgreSQL
SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b ON
    e.empID = b.empId
WHERE 
    b.bonus < 1000 OR b.bonus is NULL;

-- more simplify (common col)
SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b USING
    (empID)
WHERE 
    b.bonus < 1000 OR b.bonus is NULL;
    

-- more simplify (remove alias)
SELECT name, bonus
FROM Employee
LEFT JOIN Bonus USING
    (empID)
WHERE 
    bonus < 1000 OR bonus is NULL;

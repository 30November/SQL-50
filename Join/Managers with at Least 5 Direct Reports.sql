-- MYSQL, Oracle, PostgreSQL
SELECT
    name
From Employee
Where id in
(SELECT managerID FROM Employee
GROUP By managerID
HAVING COUNT(managerID) >=5) ; --this is example of subquery


-- This can be done in 
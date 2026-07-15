-- MYSQL, Oracle, PostgreSQL
SELECT
    e1.reports_to employee_id ,e2.name name,COUNT(*) reports_count,ROUND(AVG(e1.age)) average_age
FROM Employees e1
JOIN Employees e2
ON (e1.reports_to = e2.employee_id) -- got Manager name + age
GROUP BY e1.reports_to
ORDER BY employee_id;

-- PostgreSQL
SELECT
    e1.reports_to employee_id ,e2.name name,COUNT(*) reports_count,ROUND(AVG(e1.age)) average_age
FROM Employees e1
JOIN Employees e2
ON (e1.reports_to = e2.employee_id) -- got Manager name + age
GROUP BY e1.reports_to, e2.name -- need to Add col ... either col be group by or aggre
ORDER BY employee_id;
--
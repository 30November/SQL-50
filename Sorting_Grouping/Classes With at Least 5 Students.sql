-- MYSQL, Oracle, PostgreSQL

SELECT
    class
FROM
    Courses
Group By class
Having COUNT(student) >= 5;
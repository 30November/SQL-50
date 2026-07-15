-- MYSQL
SELECT
    DATE_FORMAT(trans_date,'%Y-%m') month, -- look here
    country,
    count(state) trans_count,
    SUM(CASE state WHEN 'approved' THEN 1 ELSE 0 END) approved_count,
    SUM(amount) trans_total_amount,
    SUM(CASE state WHEN 'approved' THEN amount ELSE 0 END) approved_total_amount
FROM
    Transactions
Group By
    month, country;

-- Oracle
SELECT
    TO_CHAR(trans_date,'YYYY-MM') month,
    country,
    count(state) trans_count,
    SUM(CASE state WHEN 'approved' THEN 1 ELSE 0 END) approved_count,
    SUM(amount) trans_total_amount,
    SUM(CASE state WHEN 'approved' THEN amount ELSE 0 END) approved_total_amount
FROM
    Transactions
Group By
    TO_CHAR(trans_date,'YYYY-MM'), country; -- look here


--  PostgreSQL
SELECT
    TO_CHAR(trans_date,'YYYY-MM') AS month, -- look here needed to use AS
    country,
    count(state) trans_count,
    SUM(CASE state WHEN 'approved' THEN 1 ELSE 0 END) approved_count,
    SUM(amount) trans_total_amount,
    SUM(CASE state WHEN 'approved' THEN amount ELSE 0 END) approved_total_amount
FROM
    Transactions
Group By
    month , country; -- [either month or TO_CHAR(trans_date,'YYYY-MM')]

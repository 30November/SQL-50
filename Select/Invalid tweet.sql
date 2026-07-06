--MySQL, Oracle, Postgres
SELECT DISTINCT tweet_id
FROM Tweets
WHERE length(content) > 15;
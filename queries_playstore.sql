-- Comments in SQL Start with dash-dash --
-- 1
SELECT * FROM analytics
    WHERE id=1880;

-- 2
SELECT id, app_name FROM analytics
    WHERE last_updated = '2018-08-01';

-- 3
SELECT category, COUNT(category) AS count FROM analytics
    GROUP BY category;

-- 4
SELECT app_name, rating, reviews FROM analytics
    WHERE rating IS NOT NULL
    ORDER BY rating DESC
    LIMIT 5;

-- 5
SELECT app_name, rating, reviews FROM analytics
    WHERE rating >= 4.8
    ORDER BY reviews DESC
    LIMIT 1;

-- 6
SELECT category, AVG(rating) AS avg_rating FROM analytics
    GROUP BY category
    ORDER BY avg_rating DESC;

-- 7
SELECT app_name, price, rating FROM analytics
    WHERE rating < 3
    ORDER BY price DESC
    LIMIT 1;

-- 8
SELECT app_name, rating FROM analytics
    WHERE min_installs <= 50
    AND rating IS NOT NULL
    ORDER BY rating DESC;

-- 9
SELECT app_name FROM analytics
    WHERE rating < 3
    AND reviews >= 10000;

-- 10
SELECT app_name, price, rating FROM analytics
    WHERE price BETWEEN 0.1 AND 1
    AND rating IS NOT NULL
    ORDER BY rating DESC
    LIMIT 10;

-- 11
SELECT app_name, last_updated FROM analytics
    WHERE last_updated = (SELECT MIN(last_updated) FROM analytics)
    LIMIT 1;

-- 12
SELECT app_name, price FROM analytics
    WHERE price = (
        SELECT MAX(price) FROM analytics
    );

-- 13
SELECT SUM(reviews) AS num_reviews FROM analytics;

-- 14
SELECT category, COUNT(category) AS num_apps FROM analytics
    GROUP BY category
    HAVING COUNT(category) > 300;

-- 15
SELECT app_name, reviews, min_installs, min_installs/reviews AS proportion
    FROM analytics
    WHERE min_installs >= 1000000
    ORDER BY proportion DESC;
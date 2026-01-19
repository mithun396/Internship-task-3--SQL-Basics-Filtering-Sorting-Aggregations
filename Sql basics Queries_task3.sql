
-- Task 3 SQL Queries (Superstore Dataset)

-- Verify data
SELECT COUNT(*) FROM superstore_sales;
SELECT * FROM superstore_sales LIMIT 10;

-- Filtering
SELECT * FROM superstore_sales WHERE category = 'Technology';
SELECT order_id, product_name, profit FROM superstore_sales WHERE profit < 0;

-- Sorting
SELECT product_name, sales
FROM superstore_sales
ORDER BY sales DESC
LIMIT 10;

-- Aggregations
SELECT category, SUM(sales) AS total_sales
FROM superstore_sales
GROUP BY category;

SELECT region, AVG(profit) AS avg_profit
FROM superstore_sales
GROUP BY region;

-- HAVING
SELECT category, SUM(sales) AS total_sales
FROM superstore_sales
GROUP BY category
HAVING SUM(sales) > 100000;

-- BETWEEN
SELECT *
FROM superstore_sales
WHERE order_date BETWEEN '2016-01-01' AND '2016-01-31';

-- LIKE
SELECT DISTINCT customer_name
FROM superstore_sales
WHERE customer_name LIKE 'A%';

-- Export report
SELECT region, category,
       SUM(sales) AS total_sales,
       SUM(profit) AS total_profit
FROM superstore_sales
GROUP BY region, category
ORDER BY total_sales DESC;

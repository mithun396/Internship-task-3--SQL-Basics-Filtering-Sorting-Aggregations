# Internship-task-3--SQL-Basics-Filtering-Sorting-Aggregations

##  Dataset
**Sample – Superstore Dataset**

This dataset contains retail sales data including orders, customers, products, regions, sales, and profit information.

##  Tools Used
- MySQL / PostgreSQL / SQLite
- MySQL Workbench / PgAdmin / DB Fiddle
- CSV Import & Export

##  Files Included

- **Sql basics queries_task3.sql**  
  Contains all SQL queries written for this task.
  
- **sales_summary.csv**  
  Exported result showing aggregated sales and profit by region and category.
  
- **README.md**  
  Documentation explaining the task and queries.

  ##  SQL Concepts Practiced
  
  ### 1. Data Exploration:
     - SELECT COUNT(*) FROM superstore_sales;
     - SELECT * FROM superstore_sales LIMIT 10;
  ## Used to verify successful data import and understand table structure.

  ### 2. Filtering (WHERE):
     - SELECT * FROM superstore_sales WHERE category = 'Technology';
     - SELECT order_id, product_name, profit FROM superstore_sales WHERE profit < 0;
  ## Filtered data based on category and profit conditions.

  ### 3. Sorting (ORDER BY):
     - SELECT product_name, sales
     - FROM superstore_sales
     - ORDER BY sales DESC
     - LIMIT 10;
  ## Identified top-selling products.

  ### 4. Aggregations (GROUP BY):
     - SELECT category, SUM(sales) AS total_sales
     - FROM superstore_sales
     - GROUP BY category;
  ## Summarized sales by category.   

  ### 5. HAVING Clause:
     - SELECT category, SUM(sales) AS total_sales
     - FROM superstore_sales
     - GROUP BY category
     - HAVING SUM(sales) > 100000;
  ## Filtered aggregated results.

  ### 6. Date Filtering (BETWEEN):
     - SELECT * FROM superstore_sales
     - WHERE order_date BETWEEN '2016-01-01' AND '2016-01-31';
  ## Generated monthly sales reports.

  ### 7. Pattern Matching (LIKE):
     - SELECT DISTINCT customer_name
     - FROM superstore_sales
     - WHERE customer_name LIKE 'A%';
  ## Searched customer names using patterns.

  ### 8. Business Summary Report:
     - SELECT region, category,
            SUM(sales) AS total_sales,
            SUM(profit) AS total_profit
     - FROM superstore_sales
     - GROUP BY region, category
     - ORDER BY total_sales DESC;
  ## Created a business-level summary and exported it as CSV.


### Learning Outcome
 - Strong understanding of SQL SELECT queries
 - Ability to filter and sort business data
 - Experience with aggregations and reporting
 - Confidence working with real datasets
 - Ready for SQL interviews and analyst tasks
 







-- Total Revenue
SELECT SUM(revenue) AS total_revenue FROM cleaned_data;
-- sales by catagory
SELECT category, SUM(revenue) 
FROM cleaned_data
GROUP BY category;
-- top 5 products
SELECT product, SUM(quantity) 
FROM cleaned_data
GROUP BY product
ORDER BY SUM(quantity) DESC
LIMIT 5;
-- sales trend
SELECT date, SUM(revenue)
FROM cleaned_data
GROUP BY date
ORDER BY date;
-- Average Revenue
SELECT AVG(revenue) AS avg_revenue FROM cleaned_data;
-- Best Performing Category
SELECT category, SUM(revenue) AS total_sales
FROM cleaned_data
GROUP BY category
ORDER BY total_sales DESC
LIMIT 1;
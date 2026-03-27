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

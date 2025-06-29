SELECT * FROM `sample - superstore`;

SELECT SUM(Sales) AS Total_Revenue FROM `sample - superstore`;

SELECT SUM(Profit) AS Total_Profit FROM `sample - superstore`;

SELECT SUM(Quantity) AS Total_Quantity_Sold FROM `sample - superstore`;

SELECT AVG(Discount) AS Avg_Discount FROM `sample - superstore`;

SELECT Category, SUM(Sales) AS Revenue 
FROM `sample - superstore`
GROUP BY Category;

SELECT Region, SUM(Profit) AS Total_Profit 
FROM `sample - superstore`
GROUP BY Region;

SELECT COUNT(*) AS Total_Records FROM `sample - superstore`;

SELECT DISTINCT `Ship Mode` FROM `sample - superstore`;

SELECT SUM(Sales) AS Total_Revenue FROM `sample - superstore`;

SELECT `Order ID`, Sales
FROM `sample - superstore`
ORDER BY Sales DESC
LIMIT 5;

SELECT * 
FROM `sample - superstore`
WHERE State = 'California';

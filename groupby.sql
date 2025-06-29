SELECT `Customer Name`, SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 5;

SELECT `Customer Name`, SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY `Customer Name`
HAVING Total_Sales > (
    SELECT AVG(Sales) FROM `sample - superstore`
);

SELECT Region, SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY Region;

SELECT Category, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM `sample - superstore`
GROUP BY Category;

SELECT `Customer Name`, SUM(Quantity) AS Total_Quantity
FROM `sample - superstore`
GROUP BY `Customer Name`;

SELECT `Ship Mode`, COUNT(*) AS Order_Count
FROM `sample - superstore`
GROUP BY `Ship Mode`;

SELECT State, SUM(Profit) AS Total_Profit
FROM `sample - superstore`
GROUP BY State
ORDER BY Total_Profit DESC;

SELECT `Sub-Category`, AVG(Sales) AS Avg_Sales, AVG(Profit) AS Avg_Profit
FROM `sample - superstore`
GROUP BY `Sub-Category`;

CREATE TABLE customers (
    `Customer ID` VARCHAR(50) PRIMARY KEY,
    `Customer Name` VARCHAR(100)
);

INSERT INTO customers (`Customer ID`, `Customer Name`)
SELECT DISTINCT `Customer ID`, `Customer Name`
FROM `sample - superstore`;

SELECT s.`Customer ID`, s.`Customer Name`, s.Sales, c.`Customer Name`
FROM `sample - superstore` s
INNER JOIN customers c ON s.`Customer ID` = c.`Customer ID`;

SELECT s.`Customer ID`, s.`Customer Name`, s.Sales, c.`Customer Name`
FROM `sample - superstore` s
LEFT JOIN customers c ON s.`Customer ID` = c.`Customer ID`;

SELECT s.`Customer ID`, s.Sales, c.`Customer Name`
FROM `sample - superstore` s
RIGHT JOIN customers c ON s.`Customer ID` = c.`Customer ID`;

SELECT `Customer Name`, Total_Sales
FROM (
    SELECT `Customer Name`, SUM(Sales) AS Total_Sales
    FROM `sample - superstore`
    GROUP BY `Customer Name`
) AS customer_sales
ORDER BY Total_Sales DESC
LIMIT 1;

SELECT Region, AVG(Total_Sales) AS Avg_Sales_Per_Customer
FROM (
    SELECT Region, `Customer Name`, SUM(Sales) AS Total_Sales
    FROM `sample - superstore`
    GROUP BY Region, `Customer Name`
) AS regional_sales
GROUP BY Region;

SELECT `Product Name`, Sales / Quantity AS Unit_Price
FROM `sample - superstore`
WHERE (Sales / Quantity) > (
    SELECT AVG(Sales / Quantity) FROM `sample - superstore`
);

CREATE VIEW category_summary AS
SELECT Category, SUM(Sales) AS Total_Sales, AVG(Profit) AS Avg_Profit
FROM `sample - superstore`
GROUP BY Category;
select * from category_summary;

CREATE INDEX idx_customer_id ON `sample - superstore` (Customer_ID);

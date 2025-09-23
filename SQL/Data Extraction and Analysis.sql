-- Overall KPIs
SELECT ROUND(SUM(sales),2)  AS Total_sales,
ROUND(SUM(profit),2) AS Total_profit,
ROUND(SUM(quantity),2)  AS Total_quantity ,
ROUND(SUM(profit)/SUM(sales)*100,2)  AS Profit_Margin_Percentage
FROM superstore	

-- Sales & Profit by Category
SELECT Category,
       ROUND(SUM(Sales),2) AS total_sales,
       ROUND(SUM(Profit),2) AS total_profit,
       ROUND(SUM(Profit)/SUM(Sales)*100,2) AS profit_margin_percent
FROM superstore
GROUP BY Category
ORDER BY total_sales DESC;

--  Sales & Profit by SubCategory 
SELECT subcategory, 
ROUND(SUM(sales),2) as Total_sales,
ROUND(SUM (profit),2) AS Total_profit,
ROUND(SUM(profit)/SUM(sales)*100,2) as profit_margin_percent
FROM  superstore
GROUP BY subcategory
ORDER BY total_sales DESC

-- 
SELECT 
region,
ROUND(SUM(sales),2) as Total_sales,
ROUND(SUM(profit),2) as Total_profit
FROM superstore
GROUP BY region
ORDER BY total_sales DESC


-- Monthly Sales Trend 
SELECT DATE_TRUNC('month', OrderDate) AS month,
       ROUND(SUM(Sales),2) AS total_sales,
       ROUND(SUM(Profit),2) AS total_profit
FROM superstore
GROUP BY month
ORDER BY month;

-- Top Customers
SELECT CustomerName,
       ROUND(SUM(Sales),2) AS total_sales,
       ROUND(SUM(Profit),2) AS total_profit
FROM superstore
GROUP BY CustomerName
ORDER BY total_profit DESC
LIMIT 10;

-- Sales By Products
SELECT productname,
	   category,
       ROUND(SUM(Sales),2) AS total_sales,
       ROUND(SUM(Profit),2) AS total_profit
 FROM superstore
 GROUP BY productname , category
 ORDER BY total_sales DESC

-- Discount Impact on profit
SELECT Discount,
       ROUND(SUM(Sales),2) AS total_sales,
       ROUND(SUM(Profit),2) AS total_profit
FROM superstore
GROUP BY Discount
ORDER BY Discount;

-- LOSS MAKING ORDERS
SELECT OrderID, ProductName, Category, Sales, Profit, Discount
FROM superstore
WHERE Profit < 0
ORDER BY Profit ASC
LIMIT 20;


select * from superstore
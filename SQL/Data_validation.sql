-- Total Rows
SELECT COUNT(*) FROM superstore

-- Data Range 
SELECT MIN(OrderDate) AS First_Order,
MAX(OrderDate) AS Last_Order
FROM superstore

-- Check Categories
SELECT DISTINCT Category FROM superstore
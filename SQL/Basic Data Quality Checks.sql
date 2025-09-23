SELECT * FROM superstore

-- Total Number Of Rows
SELECT COUNT(*) FROM superstore


-- Checking Null Values
SELECT COUNT(*) FILTER ( WHERE customername is null),
COUNT(*) FILTER ( WHERE sales is null),
COUNT(*) FILTER ( WHERE profit is null)
FROM superstore

-- Checking Unique Values 
SELECT DISTINCT category,subcategory from superstore
select* from zepto.zepto_v2;

select count(*) from zepto.zepto_v2;

ALTER TABLE zepto.zepto_v2 RENAME COLUMN ï»¿Category TO category;

SELECT * FROM zepto.zepto_v2
LIMIT 10;

SELECT * FROM zepto.zepto_v2
WHERE name IS NULL
OR
category IS NULL
OR
mrp IS NULL
OR
discountPercent IS NULL
OR
discountedSellingPrice IS NULL
OR
weightInGms IS NULL
OR
availableQuantity IS NULL
OR
outOfStock IS NULL
OR
quantity IS NULL;


SELECT DISTINCT category
FROM zepto.zepto_v2
ORDER BY category;

-- Q2.What are the Products with High MRP but Out of Stock
SELECT DISTINCT name,mrp
FROM zepto.zepto_v2
WHERE outOfStock = TRUE and mrp > 3000
ORDER BY mrp DESC;


-- Q3.Calculate Estimated Revenue for each category
SELECT category,
SUM(discountedSellingPrice * availableQuantity) AS total_revenue
FROM zepto.zepto_v2
GROUP BY category
ORDER BY total_revenue;

-- Q4. Find all products where MRP is greater than ₹90000 and discount is less than 5%.
SELECT DISTINCT name, mrp, discountPercent
FROM zepto.zepto_v2
WHERE mrp > 90000 AND discountPercent > 5
ORDER BY mrp DESC, discountPercent DESC;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.
SELECT category,
ROUND(AVG(discountPercent),2) AS avg_discount
FROM zepto.zepto_v2
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 50;


-- Q6.Group the products into categories like Low, Medium, Bulk.
SELECT DISTINCT name, weightInGms,
CASE WHEN weightInGms < 1000 THEN 'Low'
	WHEN weightInGms < 5000 THEN 'Medium'
	ELSE 'Bulk'
	END AS weight_category
FROM zepto.zepto_v2;

-- .What is the Total Inventory Weight Per Category 
SELECT category,
SUM(weightInGms * availableQuantity) AS total_weight
FROM zepto.zepto_v2
GROUP BY category
ORDER BY total_weight;











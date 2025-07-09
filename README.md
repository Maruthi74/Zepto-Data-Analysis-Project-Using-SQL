
- **weightInGms:** Product weight in grams

- **outOfStock:** Boolean flag indicating stock availability

- **quantity:** Number of units per package (mixed with grams for loose produce)



📊 Zepto Data Analysis Using SQL
This project showcases a comprehensive SQL-based analysis of product data from Zepto, a quick-commerce platform. The dataset contains various product attributes like name, category, MRP, discount percent, stock levels, and more.

🔍 Key Analyses Performed
✅ Data Cleaning: Renamed misencoded columns and filtered out rows with null values in key fields.

🛑 Out-of-Stock Products: Identified high-MRP items (MRP > ₹3000) that are out of stock.

💰 Revenue Estimation: Calculated potential revenue for each category using discountedSellingPrice × availableQuantity.

🎯 High-Value Products: Filtered products with MRP > ₹90,000 and low discount (< 5%).

📉 Top Discounted Categories: Ranked categories by average discount percent.

⚖️ Weight-Based Classification: Grouped products into Low, Medium, or Bulk based on weight.

📦 Inventory Weight Estimation: Computed total inventory weight per category for stock logistics insights.


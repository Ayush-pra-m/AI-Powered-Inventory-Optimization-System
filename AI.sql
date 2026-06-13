create database AI
USE AI
SELECT
    Category,
    SUM(Revenue) AS Total_Revenue
FROM master_df
GROUP BY Category
ORDER BY Total_Revenue DESC;
SELECT
    YEAR(Date) AS Year,
    MONTH(Date) AS Month,
    SUM(Quantity_Sold) AS Total_Demand
FROM master_df
GROUP BY YEAR(Date), MONTH(Date)
ORDER BY Year, Month;

SELECT
    Product_ID,
    Product_Name,
    Current_Stock,
    Reorder_Point
FROM master_df
WHERE Current_Stock < Reorder_Point;

SELECT
    Supplier_ID,
    AVG(Base_Lead_Time) AS Avg_Lead_Time,
   Round( AVG(Supplier_Rating),2) AS Avg_Rating
FROM master_df
GROUP BY Supplier_ID

SELECT
    Product_ID,
    Product_Name,
    SUM(Revenue) AS Revenue
FROM master_df
GROUP BY Product_ID, Product_Name
ORDER BY Revenue DESC


--United States E-Commerce records 2020

--use database
use [SQL Portfolio Projects];
--display records from US_E_Commerce table
select * from US_E_Commerce;

--1. Retrieve the total number of records in the dataset:
SELECT COUNT(*) AS TotalRecords FROM US_E_Commerce;

--2. Retrieve the total sales made in the dataset:
SELECT SUM(Sales) AS TotalSales FROM US_E_Commerce;

--3. Retrieve the total profit made in the dataset:
SELECT SUM(Profit) AS TotalProfit FROM US_E_Commerce;

--4. Retrieve the total quantity of products sold:
SELECT SUM(Quantity) AS TotalQuantity FROM US_E_Commerce;

--5. Retrieve the top 10 products by sales:
SELECT TOP 10 Product_Name, SUM(Sales) AS TotalSales
FROM US_E_Commerce
GROUP BY Product_Name
ORDER BY TotalSales DESC;

--6. Retrieve the top 10 products by profit:
SELECT TOP 10  Product_Name, SUM(Profit) AS TotalProfit
FROM US_E_Commerce
GROUP BY Product_Name
ORDER BY TotalProfit DESC;

--7. Retrieve the total sales made by each category:
SELECT Category, SUM(Sales) AS TotalSales
FROM US_E_Commerce
GROUP BY Category;

--8. Retrieve the total profit made by each category:
SELECT Category, SUM(Profit) AS TotalProfit
FROM US_E_Commerce
GROUP BY Category;

--9. Retrieve the total sales made by each sub-category:
SELECT Sub_Category, SUM(Sales) AS TotalSales
FROM US_E_Commerce
GROUP BY Sub_Category;

--10. Retrieve the total profit made by each sub-category:
SELECT Sub_Category, SUM(Profit) AS TotalProfit
FROM US_E_Commerce
GROUP BY Sub_Category;

--11. Retrieve the total sales made by each customer:
SELECT Customer_ID, SUM(Sales) AS TotalSales
FROM US_E_Commerce
GROUP BY Customer_ID;

--12. Retrieve the total profit made by each customer:
SELECT Customer_ID, SUM(Profit) AS TotalProfit
FROM US_E_Commerce
GROUP BY Customer_ID;

--13. Retrieve the sales made by each state:
SELECT State, SUM(Sales) AS TotalSales
FROM US_E_Commerce
GROUP BY State;

--14. Retrieve the profit made by each state:
SELECT State, SUM(Profit) AS TotalProfit
FROM US_E_Commerce
GROUP BY State;

--15. Retrieve the sales made by each city:
SELECT City, SUM(Sales) AS TotalSales
FROM US_E_Commerce
GROUP BY City;

--16. Retrieve the profit made by each city:
SELECT City, SUM(Profit) AS TotalProfit
FROM US_E_Commerce
GROUP BY City;

--17. Retrieve the sales made by each region:
SELECT Region, SUM(Sales) AS TotalSales
FROM US_E_Commerce
GROUP BY Region;

--18. Retrieve the profit made by each region:
SELECT Region, SUM(Profit) AS TotalProfit
FROM US_E_Commerce
GROUP BY Region;

--19. Retrieve the number of orders made by each customer:
SELECT Customer_ID, COUNT(DISTINCT Order_ID) AS TotalOrders
FROM US_E_Commerce
GROUP BY Customer_ID;

--20. Retrieve the average discount given on products:
SELECT AVG(Discount) AS AverageDiscount
FROM US_E_Commerce;

--21. Retrieve the number of orders made in each month:
SELECT DATEPART(MONTH, Order_Date) AS Month, COUNT(DISTINCT Order_ID) AS TotalOrders
FROM US_E_Commerce
GROUP BY DATEPART(MONTH, Order_Date);

--22. Retrieve the total sales made in each month:
SELECT DATEPART(MONTH, Order_Date) AS Month, SUM(Sales) AS TotalSales
FROM US_E_Commerce
GROUP BY DATEPART(MONTH, Order_Date);

--23. Retrieve the total profit made in each month:
SELECT DATEPART(MONTH, Order_Date) AS Month, SUM(Profit) AS TotalProfit
FROM US_E_Commerce
GROUP BY DATEPART(MONTH, Order_Date);

--24. Retrieve the top 10 customers by total sales:
SELECT TOP 10 Customer_ID, SUM(Sales) AS TotalSales
FROM US_E_Commerce
GROUP BY Customer_ID
ORDER BY TotalSales DESC;

--25. Retrieve the average sales, quantity, discount, and profit for each product category:
SELECT Category, AVG(Sales) AS AvgSales, AVG(Quantity) AS AvgQuantity, AVG(Discount) AS AvgDiscount, AVG(Profit) AS AvgProfit
FROM US_E_Commerce
GROUP BY Category;



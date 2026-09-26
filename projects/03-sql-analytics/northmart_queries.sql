-- ============================================================
-- NorthMart SQL Analytics
-- Phase 3 Project | Score: 9.67/10
-- Database: Customers, Orders, OrderLines
-- ============================================================

-- ============================================================
-- 1. BASIC TABLE INSPECTION
-- ============================================================

-- List all customers
SELECT * FROM Customers;

-- List all orders
SELECT * FROM Orders;

-- List all order lines
SELECT * FROM OrderLines;

-- Count records in each table
SELECT 'Customers' AS TableName, COUNT(*) AS RecordCount FROM Customers
UNION ALL
SELECT 'Orders', COUNT(*) FROM Orders
UNION ALL
SELECT 'OrderLines', COUNT(*) FROM OrderLines;


-- ============================================================
-- 2. MULTI-TABLE JOINS
-- ============================================================

-- Basic 3-table join: Revenue by customer and region
SELECT 
    c.CustomerID,
    c.CustomerName,
    c.Region,
    c.Segment,
    SUM(ol.Sales) AS TotalSales,
    COUNT(DISTINCT o.OrderID) AS OrderCount
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
LEFT JOIN OrderLines ol ON o.OrderID = ol.OrderID
GROUP BY c.CustomerID, c.CustomerName, c.Region, c.Segment
ORDER BY TotalSales DESC;

-- Revenue by Region and Segment
SELECT 
    c.Region,
    c.Segment,
    SUM(ol.Sales) AS TotalSales,
    COUNT(DISTINCT o.OrderID) AS OrderCount,
    ROUND(AVG(ol.Sales), 2) AS AvgOrderValue
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
LEFT JOIN OrderLines ol ON o.OrderID = ol.OrderID
GROUP BY c.Region, c.Segment
ORDER BY TotalSales DESC;


-- ============================================================
-- 3. ANTI-JOIN: CUSTOMERS WITH NO ORDERS
-- ============================================================

-- Find customers who have never placed an order
SELECT 
    c.CustomerID, 
    c.CustomerName, 
    c.Region,
    c.Segment
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;


-- ============================================================
-- 4. SUBQUERIES
-- ============================================================

-- Customers with above-average total sales
SELECT 
    c.CustomerID,
    c.CustomerName,
    c.Region,
    CustomerTotal.Sales AS TotalSales
FROM Customers c
JOIN (
    SELECT 
        o.CustomerID,
        SUM(ol.Sales) AS Sales
    FROM Orders o
    JOIN OrderLines ol ON o.OrderID = ol.OrderID
    GROUP BY o.CustomerID
) AS CustomerTotal ON c.CustomerID = CustomerTotal.CustomerID
WHERE CustomerTotal.Sales > (
    SELECT AVG(CustomerSales) 
    FROM (
        SELECT SUM(ol.Sales) AS CustomerSales
        FROM Orders o
        JOIN OrderLines ol ON o.OrderID = ol.OrderID
        GROUP BY o.CustomerID
    ) AS AvgCalc
)
ORDER BY TotalSales DESC;


-- ============================================================
-- 5. WINDOW FUNCTIONS
-- ============================================================

-- Rank products by sales within each order
SELECT * FROM (
    SELECT 
        o.OrderID,
        ol.Product,
        ol.Sales,
        RANK() OVER (PARTITION BY o.OrderID ORDER BY ol.Sales DESC) AS SalesRank
    FROM Orders o
    JOIN OrderLines ol ON o.OrderID = ol.OrderID
) AS Ranked
WHERE SalesRank = 1;

-- Running total of sales by date
SELECT 
    o.OrderDate,
    SUM(ol.Sales) AS DailySales,
    SUM(SUM(ol.Sales)) OVER (ORDER BY o.OrderDate) AS RunningTotal
FROM Orders o
JOIN OrderLines ol ON o.OrderID = ol.OrderID
GROUP BY o.OrderDate
ORDER BY o.OrderDate;


-- ============================================================
-- 6. AGGREGATE WINDOW FUNCTIONS
-- ============================================================

-- Compare each customer's total to their segment average
SELECT 
    c.CustomerID,
    c.CustomerName,
    c.Segment,
    SUM(ol.Sales) AS CustomerTotal,
    AVG(SUM(ol.Sales)) OVER (PARTITION BY c.Segment) AS SegmentAvg,
    SUM(ol.Sales) - AVG(SUM(ol.Sales)) OVER (PARTITION BY c.Segment) AS DiffFromSegmentAvg
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderLines ol ON o.OrderID = ol.OrderID
GROUP BY c.CustomerID, c.CustomerName, c.Segment;


-- ============================================================
-- 7. CTEs (COMMON TABLE EXPRESSIONS)
-- ============================================================

-- CTE for customer sales summary
WITH CustomerSales AS (
    SELECT 
        o.CustomerID,
        SUM(ol.Sales) AS TotalSales,
        COUNT(DISTINCT o.OrderID) AS OrderCount
    FROM Orders o
    JOIN OrderLines ol ON o.OrderID = ol.OrderID
    GROUP BY o.CustomerID
)
SELECT 
    c.CustomerID,
    c.CustomerName,
    c.Region,
    cs.TotalSales,
    cs.OrderCount,
    CASE 
        WHEN cs.TotalSales > 10000 THEN 'High Value'
        WHEN cs.TotalSales > 5000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS CustomerTier
FROM Customers c
JOIN CustomerSales cs ON c.CustomerID = cs.CustomerID
ORDER BY cs.TotalSales DESC;

-- QuantigrationUpdates Database
-- Data analysis queries

USE QuantigrationUpdates;

-- 1. Find orders associated with customers in Framingham, Massachusetts
SELECT
    OrderID,
    COUNT(*) AS Occurrence
FROM Orders
INNER JOIN Customers
    ON Customers.CustomerID = Orders.CustomerID
WHERE Customers.City LIKE '%Framingham%'
GROUP BY OrderID
ORDER BY Occurrence DESC;


-- 2. Find customers located in Massachusetts
SELECT
    CustomerID,
    COUNT(*) AS Occurrence
FROM Customers
WHERE State LIKE '%Massachusetts%'
GROUP BY CustomerID
ORDER BY Occurrence DESC;


-- 3. Count customers located in Woonsocket, Rhode Island
SELECT
    CustomerID,
    COUNT(*) AS Occurrence
FROM Customers
WHERE City LIKE '%Woonsocket%'
GROUP BY CustomerID
ORDER BY Occurrence DESC;


-- 4. Check the current RMA status for OrderID 5175
SELECT
    Status,
    Step
FROM RMA
WHERE OrderID = 5175;

-- Task 22: SQL Filtering Practice
-- Database: Northwind sample database (run on Microsoft SQL Server)
-- Operators practiced: WHERE, OR, IN, NOT IN, BETWEEN, LIKE
-- Author: Rabia


-- ===== WHERE =====

-- Query 1: Which customers are in Mexico?
SELECT CustomerName,
       City
FROM Customers
WHERE Country = 'Mexico';


-- Query 2: Which products cost more than 40?
SELECT ProductName,
       Price
FROM Products
WHERE Price > 40
ORDER BY Price DESC;


-- Query 3: Customers from Germany OR France (using OR)
SELECT CustomerName,
       Country
FROM Customers
WHERE Country = 'Germany'
   OR Country = 'France';


-- ===== IN =====

-- Query 4: Same question as Query 3, but using IN (should return the same rows)
SELECT CustomerName,
       Country
FROM Customers
WHERE Country IN ('Germany', 'France');


-- Query 5: Products in category 1 (Beverages) or category 2 (Condiments)
SELECT ProductName,
       CategoryID,
       Price
FROM Products
WHERE CategoryID IN (1, 2);


-- Query 6: Customers NOT from the USA, Germany or France
SELECT CustomerName,
       Country
FROM Customers
WHERE Country NOT IN ('USA', 'Germany', 'France');


-- ===== BETWEEN =====

-- Query 7: Products with a mid-range price, between 10 and 20 (both ends included)
SELECT ProductName,
       Price
FROM Products
WHERE Price BETWEEN 10 AND 20
ORDER BY Price;


-- Query 8: Orders placed in July 1996
SELECT OrderID,
       CustomerID,
       OrderDate
FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31'
ORDER BY OrderDate;


-- Query 9: Large order lines, with a quantity between 50 and 100
SELECT OrderID,
       ProductID,
       Quantity
FROM OrderDetails
WHERE Quantity BETWEEN 50 AND 100
ORDER BY Quantity DESC;


-- ===== LIKE =====

-- Query 10: Customers whose name starts with A
SELECT CustomerName,
       Country
FROM Customers
WHERE CustomerName LIKE 'A%';


-- Query 11: Products with "Chef" anywhere in the name
SELECT ProductName,
       Price
FROM Products
WHERE ProductName LIKE '%Chef%';


-- Query 12: Combined filter. Customers from Germany or France whose name starts with B
SELECT CustomerName,
       Country
FROM Customers
WHERE Country IN ('Germany', 'France')
  AND CustomerName LIKE 'B%';

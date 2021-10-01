SELECT ContactName AS Adi FROM Customers;

SELECT * FROM Customers WHERE City = 'London';

SELECT * FROM Products WHERE CategoryID = 1 OR CategoryID = 3;

SELECT * FROM Products WHERE CategoryID = 1 AND UnitPrice >= 10;

SELECT * FROM Products ORDER BY ProductName;

SELECT * FROM Products ORDER BY CategoryID, ProductName;

SELECT * FROM Products WHERE CategoryID = 1 ORDER BY UnitPrice DESC;

SELECT COUNT(*) AS NumberOfProducts FROM Products;

SELECT CategoryID FROM Products GROUP BY CategoryID;

SELECT CategoryID, COUNT(*) AS NumberOfProducts FROM Products GROUP BY CategoryID;

SELECT CategoryID, COUNT(*) AS NumberOfProducts FROM Products GROUP BY CategoryID HAVING COUNT(*) < 10;

SELECT CategoryID, COUNT(*) AS NumberOfProducts FROM Products WHERE UnitPrice > 20 GROUP BY CategoryID HAVING COUNT(*) < 10;

SELECT Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName 
FROM Products INNER JOIN Categories 
ON Products.CategoryID = Categories.CategoryID
WHERE Products.UnitPrice < 10;

/* In [Order Details] braces have been used because the table name has 2 words and a space */
SELECT * FROM Products AS P INNER JOIN [Order Details] AS OD ON P.ProductID = OD.ProductID;

-- INNER JOIN just brings the results that matches for both tables.
-- LEFT JOIN also brings results from the table written on the left. In this case left table is Customers, right table is ORDERS
SELECT * FROM Customers AS C LEFT JOIN ORDERS O ON C.CustomerID = O.CustomerID;

-- This query brings results to see which customers haven't ordered a product yet. It can be used to promote products to specific customers.
-- We write it as "is null" because when we join these tables, we can see the results null because there is no orders for those customers.
SELECT * FROM Customers AS C LEFT JOIN ORDERS O ON C.CustomerID = O.CustomerID WHERE O.CustomerID IS NULL;

-- Join 3 tables
SELECT * FROM Products as p INNER JOIN [Order Details] AS od ON p.ProductID = od.ProductID INNER JOIN Orders AS o ON o.OrderID = od.OrderID;

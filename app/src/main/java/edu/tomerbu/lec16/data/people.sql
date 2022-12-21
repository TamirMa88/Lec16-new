--הצג את כל העמודות מטבלת Customers
--מציג את כל הפרטים של כל הלקוחות
SELECT * FROM Customers;

--הצג רק את מס' לקוח ושם איש קשר מטבלת לקוחות
SELECT CustomerID, ContactName FROM Customers;

--הצג לקוחות עם ID של 5
SELECT *  FROM Customers
WHERE CustomerID = 5;

--הצג לקוחות עם ID קטן מ 5
SELECT *  FROM Customers
WHERE CustomerID < 5;

-- הצג לקוחות ששם העיר שלהם מתחיל באות B
SELECT *  FROM Customers
WHERE City LIKE 'B%';

-- הצג לקוחות שמספר לקוח מכיל 5
SELECT *  FROM Customers
WHERE CustomerID LIKE '%5%';


-- הצג לקוחות שהמדינה שלהם נמצאת ברשימה
SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');


SELECT * FROM Products
WHERE ProductName LIKE 'T%'
AND Price > 20

--JOIN 2 tables:
SELECT * FROM Products JOIN Categories
ON Products.CategoryID = Categories.CategoryID

--Join 3 tables:
SELECT * FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID


INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);



INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');


--אם יש AutoIncrement לא צריך לציין ID כי הוא עולה לבד
INSERT INTO Categories(CategoryName, Description)
VALUES('abc', 'desc')

--מוחק לפי ID
DELETE FROM Categories
WHERE CategoryID = 8

--מוחק את כל השורות
DELETE FROM Categories
--WHERE CategoryID = 8


UPDATE Categories
SET CategoryName = 'Drinks'
WHERE CategoryID = 1

UPDATE Categories
SET CategoryName = 'Drinks!!!'
WHERE CategoryName = 'Drinks'


UPDATE Categories
SET CategoryName = 'Drinks', Description='Soft Drinks'
WHERE CategoryID = 1
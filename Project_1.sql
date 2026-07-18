CREATE DATABASE PROJECT1;

CREATE TABLE Customers(
	customer_ID INT NOT NULL,
    name VARCHAR(50),
    email VARCHAR(100),
    address VARCHAR(200)
);

-- insert at least 5 sample customers into customer table
INSERT INTO Customers (customer_ID, name, email, address) values
(1, "Bhumi", "bhumi@gmail.com", "maninagar,ahmedabad"),
(2, "Dolly", "Dolly@gmail.com", "thergoan, pune"),
(3, "Mayuri", "Mayuri@gmail.com", "Isanpur,ahmedabad"),
(4, "Zenith", "Zenith@gmail.com", "Satelite,ahmedabad"),
(5, "Rakshit", "Rakshit@gmail.com", "maninagar,ahmedabad");

-- retrive all customer details
SELECT * FROM Customers;

SET SQL_SAFE_UPDATES = 0;

-- Update a customer's address
UPDATE Customers 
SET address = "Bhaduatnagar, Ahmedabad" 
WHERE customer_ID = 1;

UPDATE customers 
SET name = "Alice"
WHERE customer_ID = 5;

-- Delete a customer using customer ID
DELETE FROM customers 
WHERE customer_ID = 1;

-- Display customer whose name is Alice
SELECT * FROM Customers WHERE name = "Alice";

CREATE TABLE Orders(
	order_ID INT NOT NULL,
	customer_ID INT NOT NULL,
    order_date DATE,
    Total_amount INT
);

DROP TABLE Orders; 

-- insert at least 5 sample order into orders table
INSERT INTO Orders (order_ID ,customer_ID, order_date, Total_amount) values
(2340, 1, "2026-05-26", 500),
(2341, 2, "2026-06-26", 600),
(2343, 1, "2026-07-17", 250),
(2344, 1, "2026-05-28", 300),
(2345, 5, "2026-01-26", 400);

-- Retrieve all orders made by specific customer
SELECT * FROM Orders WHERE customer_ID = 1;

-- Update an order's total amount
UPDATE Orders
SET Total_amount = 700
WHERE Total_amount = 300;

-- Delete an order using its OrderID
DELETE FROM Orders 
WHERE order_ID = 2343;

-- Retrieve orders in last 30 days
SELECT * FROM Orders WHERE order_date >= NOW() - INTERVAL 30 DAY;

-- Retrieve the highest, lowesr and average order amount using aggregate functions. 
SELECT 
    MAX(Total_amount) AS Highest_Order_Amount,
    MIN(Total_amount) AS Lowest_Order_Amount,
    AVG(Total_amount) AS Average_Order_Amount
FROM Orders;

 CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);


-- Insert 5 sample values into poroduct table
INSERT INTO Products (ProductID, ProductName, Price, Stock)
VALUES
(101, 'Laptop', 72000, 15),
(102, 'Smartphone', 35000, 20),
(103, 'Headphones', 7500, 50),
(104, 'Smart Watch', 12000, 0),
(105, 'Keyboard', 2500, 30);

-- Retrieve All Products Sorted by Price (Highest to Lowest)
SELECT *
FROM Products
ORDER BY Price DESC;

-- Update the Price of a Specific Product
UPDATE Products
SET Price = 75000
WHERE ProductID = 101;

-- Delete a Product if it is Out of Stock
DELETE FROM Products
WHERE Stock = 0;

-- Retrieve Products Whose Price is Between 7500 and 72000
SELECT *
FROM Products
WHERE Price BETWEEN 7500 AND 72000;

-- Find the Most Expensive and Cheapest Product
SELECT
    MAX(Price) AS Most_Expensive,
    MIN(Price) AS Cheapest
FROM Products;


CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2)
);

-- insert 5 sample values for order details table
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, SubTotal)
VALUES
(1, 2340, 101, 1, 72000),
(2, 2341, 102, 2, 70000),
(3, 2343, 103, 3, 22500),
(4, 2344, 105, 2, 5000),
(5, 2345, 102, 1, 35000);

-- Retrieve All Order Details for a Specific Order
SELECT *
FROM OrderDetails
WHERE OrderID = 2341;

-- Calculate Total Revenue Using SUM()
SELECT
    SUM(SubTotal) AS Total_Revenue
FROM OrderDetails;

-- Retrieve the Top 3 Most Ordered Products
SELECT
    ProductID,
    SUM(Quantity) AS Total_Quantity_Ordered
FROM OrderDetails
GROUP BY ProductID
ORDER BY Total_Quantity_Ordered DESC
LIMIT 3;

-- Count How Many Times a Specific Product Has Been Sold
SELECT
    COUNT(*) AS Times_Sold
FROM OrderDetails
WHERE ProductID = 102;





# PROJECT1_SQL
# Customer Order Management System

## Project Overview

This project is a simple **Customer Order Management System** built using **MySQL**. It demonstrates the use of SQL Data Definition Language (DDL), Data Manipulation Language (DML), filtering, sorting, and aggregate functions.

The database consists of four tables:

- Customers
- Orders
- Products
- OrderDetails

The project performs common database operations such as creating tables, inserting records, updating data, deleting records, retrieving information, and generating reports using SQL queries.

---

## Database Name

```
PROJECT1
```

---

## Tables

### 1. Customers

Stores customer information.

| Column | Data Type |
|---------|-----------|
| customer_ID | INT |
| name | VARCHAR(50) |
| email | VARCHAR(100) |
| address | VARCHAR(200) |

### Operations Performed

- Insert sample customer records
- Retrieve all customers
- Update customer information
- Delete a customer
- Search customer by name

---

### 2. Orders

Stores customer order information.

| Column | Data Type |
|---------|-----------|
| order_ID | INT |
| customer_ID | INT |
| order_date | DATE |
| Total_amount | INT |

### Operations Performed

- Insert sample orders
- Retrieve orders of a specific customer
- Update order amount
- Delete an order
- Retrieve orders from the last 30 days
- Find highest, lowest, and average order amount

---

### 3. Products

Stores product details.

| Column | Data Type |
|---------|-----------|
| ProductID | INT |
| ProductName | VARCHAR(100) |
| Price | DECIMAL(10,2) |
| Stock | INT |

### Operations Performed

- Insert sample products
- Display products sorted by price
- Update product price
- Delete out-of-stock products
- Retrieve products within a price range
- Find the most expensive and cheapest product

---

### 4. OrderDetails

Stores the products included in each order.

| Column | Data Type |
|---------|-----------|
| OrderDetailID | INT |
| OrderID | INT |
| ProductID | INT |
| Quantity | INT |
| SubTotal | DECIMAL(10,2) |

### Operations Performed

- Insert sample order details
- Retrieve order details by Order ID
- Calculate total revenue
- Find the top 3 most ordered products
- Count how many times a product has been sold

---

## SQL Concepts Used

- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- SELECT
- WHERE
- UPDATE
- DELETE
- ORDER BY
- BETWEEN
- GROUP BY
- Aggregate Functions
  - SUM()
  - AVG()
  - MAX()
  - MIN()
  - COUNT()
- LIMIT
- DATE Functions
- SQL_SAFE_UPDATES

---

## Sample Queries

### Retrieve all customers

```sql
SELECT * FROM Customers;
```

### Retrieve products sorted by price

```sql
SELECT *
FROM Products
ORDER BY Price DESC;
```

### Calculate total revenue

```sql
SELECT SUM(SubTotal) AS Total_Revenue
FROM OrderDetails;
```

### Retrieve top 3 most ordered products

```sql
SELECT ProductID,
       SUM(Quantity) AS Total_Quantity_Ordered
FROM OrderDetails
GROUP BY ProductID
ORDER BY Total_Quantity_Ordered DESC
LIMIT 3;
```

---

## Learning Outcomes

By completing this project, you will understand how to:

- Design a relational database
- Create and manage tables
- Insert, update, and delete records
- Retrieve filtered and sorted data
- Use aggregate functions for reporting
- Perform basic data analysis using SQL

---

## Technologies Used

- MySQL
- MySQL Workbench

---

## Author

**Bhumi Shah**

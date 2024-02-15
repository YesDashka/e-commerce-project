# E-Commerce Database Project

## Overview

This project involves the design and implementation of a simple e-commerce database.
The database includes tables for customers, products, orders and payments, allowing for the analysis of sales data
and customer behavior.

## Database Schema

### customers table
- `customer_id`(int): unique identifier for each customer.
- `first_name` (varchar): first name of the customer.
- `last_name` (varchar): last name of the customer.
- `Email` (varchar): email address of the customer.

### products table
- `product_id` (int): unique identifier for each product.
- `name` (varchar): name of the product.
- `price` (double): price of the product.
- `available_quantity` (int): Available quantity of the product.

### orders table
- `order_id` (int): unique identifier for each order.
- `customer_id` (int): foreign key referencing the customers table.

### order_details table
- `order_details_id` (int): unique identifier for each order detail.
- `order_id` (int): foreign key referencing the orders table.
- `product_id` (int): foreign key referencing the products table.
- `quantity` (int): quantity of the product in the order.

### payments table
- `payment_id` (int): unique identifier for each payment.
- `order_id` (int): foreign key referencing the orders table.
- `payment_date` (date): date of the payment.

## Relationships
- The `orders` table has a MANY-TO-ONE relationship with the `customers` table. One customer can place multiple orders.
- The `order_details` table has a MANY-TO-ONE relationship with both the `orders` and `products` tables. Each order
  detail is associated with one order and one product.
- The `payments` table has a ONE-TO-ONE relationship with the `orders` table. Each payment is associated with one order.

## Files
- [`create_tables.sql`](sql/create_tables.sql): SQL script to create the database and relative tables.
- [`mock_data.sql`](sql/mock_data.sql): SQL script to insert sample data into the tables.
- [`analysis_queries.sql`](sql/analysis_queries.sql): SQL script with queries for analyzing sales data.

## Instructions

1. **Prerequisites:**
    - Ensure that you have a MySQL database server installed and running.
    - Install MySQL Workbench (or any other preferred MySQL client).

2. **Database Connection:**
    - Connect to your MySQL database using the following credentials:
        - Host: [host]
        - Username: [username]
        - Password: [password]
        - Database: [database_name]

3. **Executing SQL Scripts:**
    - Open MySQL Workbench (or your preferred client).
    - Load and run the SQL scripts in the following order:
        - [`create_tables.sql`](sql/create_tables.sql)
        - [`mock_data.sql`](sql/mock_data.sql)
        - [`analysis_queries.sql`](sql/analysis_queries.sql)

4. **Important Notes:**
    - Review the scripts before running to understand their purpose.
    - Replace any placeholders, such as [host], [username], [password] with your actual database connection details.
    - Ensure that you have the necessary permissions to execute the scripts.


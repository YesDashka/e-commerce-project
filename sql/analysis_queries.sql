USE ecommerce_db;

# List customers ids, first and last names who have placed the most orders.

SELECT c.customer_id, c.first_name, c.last_name, COUNT(o.order_id) as total_orders_number
FROM customers c
         JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, first_name, last_name
ORDER BY total_orders_number DESC
LIMIT 5;

# Identify products with low stock (quantity less than a threshold).

SELECT product_id, name, available_quantity
FROM products
WHERE available_quantity < 10;

# Identify the top-selling products based on the total quantity sold.

SELECT p.product_id, p.name, SUM(od.quantity) as total_sales
FROM products p
         JOIN order_details od on p.product_id = od.product_id
GROUP BY p.product_id, p.name
ORDER BY total_sales DESC
LIMIT 5;

# Show the total revenue generated from all orders.

SELECT SUM(p.price * od.quantity) as total_revenue
FROM orders o
         JOIN order_details od ON o.order_id = od.order_id
         JOIN products p ON od.product_id = p.product_id;


# Calculate the average value of orders.

SELECT AVG(order_value) as average_order_value
FROM (
         SELECT SUM(p.price * od.quantity) as order_value
         FROM orders o
                  JOIN order_details od ON o.order_id = od.order_id
                  JOIN products p ON od.product_id = p.product_id
         GROUP BY o.order_id
     )
         AS order_values;

# Analyze the monthly revenue trend over time.

SELECT DATE_FORMAT(p.payment_date, '%Y-%m') AS month, SUM(pr.price * od.quantity) AS monthly_revenue
FROM payments p
         JOIN orders o ON p.order_id = o.order_id
         JOIN order_details od ON od.order_id = od.order_id
         JOIN products pr ON od.product_id = pr.product_id
GROUP BY month
ORDER BY month;
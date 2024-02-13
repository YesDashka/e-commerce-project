USE ecommerce_db;

# Insert sample data into products table
INSERT INTO products VALUES
                         (1, 'Laptop', 899.99, 20),
                         (2, 'Smartphone', 499.99, 30),
                         (3, 'Headphones', 99.99, 50),
                         (4, 'Tablet', 349.99, 15);


# Insert sample data into customers table
INSERT INTO customers VALUES
                          (1, 'John', 'Doe', 'john.doe@email.com'),
                          (2, 'Jane', 'Smith', 'jane.smith@email.com'),
                          (3, 'Alice', 'Johnson', 'alice.johnson@email.com');


# Insert sample data into orders table
INSERT INTO orders VALUES
                       (101, 1),
                       (102, 2),
                       (103, 3),
                       (104, 2);


# Insert sample data into order_details table
INSERT INTO order_details VALUES
                              (1, 101, 1, 3),
                              (2, 101, 2, 2),
                              (3, 102, 1, 1),
                              (4, 103, 3, 4);


# Insert sample data into payments table
INSERT INTO payments VALUES
                         (501, 101, '2024-02-01'),
                         (502, 102, '2024-01-02'),
                         (503, 101, '2024-03-03'),
                         (504, 103, '2024-02-04');
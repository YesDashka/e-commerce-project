DROP DATABASE ecommerce_db;
CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE IF NOT EXISTS products(
                                       product_id int primary key ,
                                       name varchar(100) not null ,
                                       price double not null ,
                                       available_quantity int not null
);

CREATE TABLE IF NOT EXISTS customers(
                                        customer_id int primary key ,
                                        first_name varchar(100) not null ,
                                        last_name varchar(100) not null ,
                                        email varchar(100) not null
);

CREATE TABLE IF NOT EXISTS orders(
                                     order_id int primary key ,
                                     customer_id int,
                                     FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE IF NOT EXISTS order_details(
                                            order_details_id int primary key ,
                                            order_id int,
                                            product_id int,
                                            quantity int not null ,
                                            FOREIGN KEY (order_id) REFERENCES orders(order_id),
                                            FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE IF NOT EXISTS payments(
                                       payment_id int not null ,
                                       order_id int,
                                       payment_date date not null ,
                                       FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
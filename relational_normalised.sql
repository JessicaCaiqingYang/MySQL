CREATE DATABASE customers;
USE customers;
CREATE TABLE customer (
customer_id INTEGER,
first_name VARCHAR(55) NOT NULL,
last_name VARCHAR(55) NOT NULL,
CONSTRAINT
pk_customer_id
PRIMARY KEY
(customer_id)
);
CREATE TABLE address (
address_id INTEGER,
building_number VARCHAR(10) NOT NULL,
street VARCHAR(50) NOT NULL,
city VARCHAR(30),
post_code VARCHAR(10) NOT NULL,
CONSTRAINT
pk_address_id
PRIMARY KEY
(address_id)
);
CREATE TABLE phone_number (
phone_id INTEGER,
customer_id INTEGER NOT NULL,
phone_number VARCHAR(30) NOT NULL,
country VARCHAR(30) NOT NULL,
CONSTRAINT
pk_phone_id
PRIMARY KEY
(phone_id)
);
CREATE TABLE email_address (
email_id INTEGER,
customer_id INTEGER NOT NULL,
email_address VARCHAR(55) NOT NULL,
CONSTRAINT
pk_email_id
PRIMARY KEY
(email_id)
);
CREATE TABLE orders (
order_id INTEGER,
customer_id INTEGER NOT NULL,
order_date DATE NOT NULL,
price FLOAT(2) NOT NULL,
CONSTRAINT
pk_order_id
PRIMARY KEY
(order_id)
);

INSERT INTO customer 
(customer_id, first_name, last_name) 
VALUES 
(1, 'Jon', 'Flanders'),
(2, 'Sam', 'Smith');
INSERT INTO address 
(address_id, building_number, street, city, post_code) 
VALUES 
(1, '20', 'Birch Alley', 'London', 'SE24 0AB'),
(2, '17', 'Oak Street', 'London', 'SE25 0XY');
INSERT INTO email_address 
(email_id, customer_id, email_address)
VALUES 
(1, 2, 'ssmith@mail.com'),
(2, 1, 'jon@mail.com');
INSERT INTO phone_number 
(phone_id, customer_id, phone_number, country) 
VALUES 
(1, 1, '555-1212','UK'),
(2, 2, '555-3344','UK');

INSERT INTO orders 
(order_id, customer_id, order_date, price) 
VALUES 
(1, 1, 20190820, 28.99),
(2, 2, 20190315, 38.22);

ALTER TABLE email_address
ADD CONSTRAINT
fk_email_address_customer
FOREIGN KEY(customer_id)
REFERENCES customer (customer_id);

ALTER TABLE phone_number
ADD CONSTRAINT
fk_phone_number_customer
FOREIGN KEY(customer_id)
REFERENCES customer (customer_id);
CREATE DATABASE Bakery;
USE Bakery;
CREATE TABLE Sweet
(id INTEGER NOT NULL,
item_name VARCHAR(50) NOT NULL,
price FLOAT(2)
);
CREATE TABLE Savoury
(id INTEGER NOT NULL,
item_name VARCHAR(50) NOT NULL,
price FLOAT(2),
main_ingredient VARCHAR(50)
);
USE Sales;
CREATE TABLE sales
(
	purchase_number INT NOT NULL PRIMARY KEY auto_increment,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL
);
CREATE TABLE customers
(
	customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints int
);

Select * from sales;
select * from sales.sales;

DROP table sales;

USE Sales;
CREATE TABLE sales
(
	purchase_number INT not null auto_increment,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL,
PRIMARY KEY (purchase_number)
);

DROP TABLE customers;

CREATE TABLE customers
(
	customer_id INT,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int,
PRIMARY KEY (customer_id)
);

CREATE TABLE items
(
	item_id varchar(255),
    item varchar(255),
    unit_price numeric(10,2),
    company_id varchar(255),
PRIMARY KEY (item_id)
);

DROP TABLE items;

CREATE TABLE companies
(
	company_id varchar(255),
    company_name varchar(255),
    headquarters_phone_number int(12),
PRIMARY KEY (company_id)
);

## Adding Foreign Key by dropping table sales

DROP TABLE sales;

CREATE TABLE sales
(
	purchase_number INT not null auto_increment,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL,
PRIMARY KEY (purchase_number),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
);

# Adding FOREIGN KEY by altering table

DROP TABLE sales;

CREATE TABLE sales
(
	purchase_number INT not null auto_increment,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL,
PRIMARY KEY (purchase_number)
);

ALTER TABLE sales
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;

# DROP Foreign KEY

ALTER TABLE sales
DROP FOREIGN KEY sales_ibfk_1;

DROP TABLE sales;

DROP TABLE customers;

DROP TABLE items;

DROP TABLE companies;

# Create table customers with a unique key on email id

CREATE TABLE customers
(
	customer_id INT,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int,
PRIMARY KEY (customer_id),
UNIQUE KEY (email_address)
);

DROP TABLE customers;

# Another way to add unique key constraint using ALTER TABLE

CREATE TABLE customers
(
	customer_id INT,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int,
PRIMARY KEY (customer_id)
);

ALTER TABLE customers
ADD UNIQUE KEY (email_address);

# Drop UNIQUE KEY

ALTER TABLE customers
DROP INDEX email_address;

DROP TABLE customers;

CREATE TABLE customers
(
	customer_id INT auto_increment,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int,
PRIMARY KEY (customer_id)
);

ALTER TABLE customers
ADD COLUMN gender ENUM('M','F') AFTER last_name;

INSERT INTO customers(first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('John','Mackinley','M','john.mckinley@365careers.com',0);

# DEFAULT constraint

ALTER TABLE customers
CHANGE number_of_complaints number_of_complaints INT DEFAULT 0;

# Lets check by adding a value

INSERT INTO customers(first_name, last_name, gender)
VALUES ('Peter','Figaro','M');

SELECT * FROM customers;

ALTER TABLE customers
ALTER column number_of_complaints DROP DEFAULT;

CREATE TABLE companies
(
	company_id varchar(255),
    company_name varchar(255) DEFAULT 'X',
    headquarters_phone_number int(12),
PRIMARY KEY (company_id),
UNIQUE KEY (headquarters_phone_number)
);

DROP TABLE companies;

USE sales;

CREATE TABLE companies
(
	company_id varchar(255),
    company_name varchar(255) NOT NULL,
    headquarters_phone_number int(12),
PRIMARY KEY (company_id)
);

ALTER TABLE companies
MODIFY company_name VARCHAR(255) NULL;

ALTER TABLE companies
MODIFY company_name VARCHAR(255) NOT NULL;

ALTER TABLE companies
MODIFY headquarters_phone_number int(12) NULL;

ALTER TABLE companies
MODIFY headquarters_phone_number int(12) NOT NULL;


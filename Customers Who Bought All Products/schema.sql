CREATE TABLE IF NOT EXISTS Customer (customer_id int, product_key int);

CREATE TABLE Product (product_key int);

TRUNCATE TABLE Customer;

INSERT INTO
    Customer (customer_id, product_key)
VALUES
    (1, '5'),
    (2, '6'),
    (3, '5'),
    (3, '6'),
    (1, '6');

TRUNCATE TABLE Product;

INSERT INTO
    Product (product_key)
VALUES
    ('5'),
    ('6');
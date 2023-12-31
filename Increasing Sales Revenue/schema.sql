CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50)
);

CREATE TABLE sales (
    product_id INT,
    year INT,
    total_sales_revenue DECIMAL(10, 2),
    PRIMARY KEY (product_id, year),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO
    products (product_id, product_name, category)
VALUES
    (1, 'Laptops', 'Electronics'),
    (2, 'Jeans', 'Clothing'),
    (3, 'Chairs', 'Home Appliances');

COMMIT;

INSERT INTO
    sales (product_id, year, total_sales_revenue)
VALUES
    (1, 2019, 1000.00),
    (1, 2020, 1200.00),
    (1, 2021, 1100.00),
    (2, 2019, 500.00),
    (2, 2020, 600.00),
    (2, 2021, 900.00),
    (3, 2019, 300.00),
    (3, 2020, 450.00),
    (3, 2021, 400.00);

COMMIT;
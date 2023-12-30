CREATE TABLE customer_orders (
    order_id integer,
    customer_id integer,
    order_date date,
    order_amount integer
);

INSERT INTO
    customer_orders
VALUES
    (1, 100, cast('2022-01-01' AS date), 2000),
    (2, 200, cast('2022-01-01' AS date), 2500),
    (3, 300, cast('2022-01-01' AS date), 2100),
    (4, 100, cast('2022-01-02' AS date), 2000),
    (5, 400, cast('2022-01-02' AS date), 2200),
    (6, 500, cast('2022-01-02' AS date), 2700),
    (7, 100, cast('2022-01-03' AS date), 3000),
    (8, 400, cast('2022-01-03' AS date), 1000),
    (9, 600, cast('2022-01-03' AS date), 3000);

COMMIT;
CREATE TABLE sku (sku_id int, price_date date, price int);

INSERT INTO
    sku
VALUES
    (1, '2023-01-01', 10),
    (1, '2023-02-15', 15),
    (1, '2023-03-03', 18),
    (1, '2023-03-27', 15),
    (1, '2023-04-06', 20);

COMMIT;
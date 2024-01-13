CREATE TABLE business_city (business_date date, city_id int);

INSERT INTO
    business_city
VALUES
    (cast('2020-01-02' AS date), 3),
    (cast('2020-07-01' AS date), 7),
    (cast('2021-01-01' AS date), 3),
    (cast('2021-02-03' AS date), 19),
    (cast('2022-12-01' AS date), 3),
    (cast('2022-12-15' AS date), 3),
    (cast('2022-02-28' AS date), 12);

COMMIT;
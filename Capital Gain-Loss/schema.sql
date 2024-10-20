CREATE TABLE IF NOT EXISTS Stocks (
    stock_name VARCHAR(15),
    operation VARCHAR(4) CHECK (operation IN ('Sell', 'Buy')),
    operation_day INT,
    price INT
);

TRUNCATE TABLE Stocks;

INSERT INTO
    Stocks (stock_name, operation, operation_day, price)
VALUES
    ('Leetcode', 'Buy', '1', '1000'),
    ('Corona Masks', 'Buy', '2', '10'),
    ('Leetcode', 'Sell', '5', '9000'),
    ('Handbags', 'Buy', '17', '30000'),
    ('Corona Masks', 'Sell', '3', '1010'),
    ('Corona Masks', 'Buy', '4', '1000'),
    ('Corona Masks', 'Sell', '5', '500'),
    ('Corona Masks', 'Buy', '6', '1000'),
    ('Handbags', 'Sell', '29', '7000'),
    ('Corona Masks', 'Sell', '10', '10000');
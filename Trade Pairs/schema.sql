CREATE TABLE Trade_tbl(
    TRADE_ID varchar(20),
    Trade_Timestamp time,
    Trade_Stock varchar(20),
    Quantity int,
    Price Float
);

INSERT INTO
    Trade_tbl
VALUES
    ('TRADE1', '10:01:05', 'ITJunction4All', 100, 20);

INSERT INTO
    Trade_tbl
VALUES
    ('TRADE2', '10:01:06', 'ITJunction4All', 20, 15);

INSERT INTO
    Trade_tbl
VALUES
    ('TRADE3', '10:01:08', 'ITJunction4All', 150, 30);

INSERT INTO
    Trade_tbl
VALUES
    ('TRADE4', '10:01:09', 'ITJunction4All', 300, 32);

INSERT INTO
    Trade_tbl
VALUES
    ('TRADE5', '10:10:00', 'ITJunction4All', -100, 19);

INSERT INTO
    Trade_tbl
VALUES
    ('TRADE6', '10:10:01', 'ITJunction4All', -300, 19);

COMMIT;
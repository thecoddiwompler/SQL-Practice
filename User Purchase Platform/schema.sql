CREATE SCHEMA users;

CREATE TABLE users.spending 
(
    user_id int,
    spend_date date,
    platform varchar(10),
    amount int
);

INSERT INTO users.spending
VALUES(1, '2019-07-01', 'mobile',100),
(1, '2019-07-01', 'desktop', 100),
(2, '2019-07-01', 'mobile', 100),
(2, '2019-07-02', 'mobile', 100),
(3, '2019-07-01', 'desktop', 100),
(3, '2019-07-02', 'desktop', 100);

COMMIT;

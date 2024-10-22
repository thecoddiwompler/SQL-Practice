CREATE TABLE IF NOT EXISTS RequestAccepted (
    requester_id int NOT NULL,
    accepter_id int NULL,
    accept_date date NULL
);

TRUNCATE TABLE RequestAccepted;

INSERT INTO
    RequestAccepted (requester_id, accepter_id, accept_date)
VALUES
    (1, 2, '2016-06-03'),
    (1, 3, '2016-06-08'),
    (2, 3, '2016-06-08'),
    (3, 4, '2016-06-09');
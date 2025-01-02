CREATE TABLE subscriber (
    sms_date date,
    sender varchar(20),
    receiver varchar(20),
    sms_no int
);

-- insert some values

INSERT INTO
    subscriber (sms_date, sender, receiver, sms_no)
VALUES
    ('2020-4-1', 'Avinash', 'Vibhor', 10),
    ('2020-4-1', 'Vibhor', 'Avinash', 20),
    ('2020-4-1', 'Avinash', 'Pawan', 30),
    ('2020-4-1', 'Pawan', 'Avinash', 20),
    ('2020-4-1', 'Vibhor', 'Pawan', 5),
    ('2020-4-1', 'Pawan', 'Vibhor', 8),
    ('2020-4-1', 'Vibhor', 'Deepak', 50);

COMMIT;
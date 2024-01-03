CREATE TABLE clocked_hours(empd_id int, swipe time, flag char);

INSERT INTO
    clocked_hours
VALUES
    (11114, '08:30', 'I'),
    (11114, '10:30', 'O'),
    (11114, '11:30', 'I'),
    (11114, '15:30', 'O'),
    (11115, '09:30', 'I'),
    (11115, '17:30', 'O');

COMMIT;
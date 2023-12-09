CREATE TABLE measurements (
    measurement_id INTEGER,
    measurement_value DECIMAL,
    measurement_time TIMESTAMP
);

INSERT INTO measurements (measurement_id, measurement_value, measurement_time)
VALUES
    (131233, 1109.51, '2022-07-10 09:00:00'),
    (135211, 1662.74, '2022-07-10 11:00:00'),
    (523542, 1246.24, '2022-07-10 13:15:00'),
    (143562, 1124.50, '2022-07-11 15:00:00'),
    (346462, 1234.14, '2022-07-11 16:45:00');
    
COMMIT;
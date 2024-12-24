CREATE TABLE IF NOT EXISTS Insurance (
    pid int,
    tiv_2015 float,
    tiv_2016 float,
    lat float,
    lon float
);

TRUNCATE TABLE Insurance;

INSERT INTO
    Insurance (pid, tiv_2015, tiv_2016, lat, lon)
VALUES
    ('1', '10', '5', '10', '10'),
    ('2', '20', '20', '20', '20'),
    ('3', '10', '30', '20', '20'),
    ('4', '10', '40', '40', '40');
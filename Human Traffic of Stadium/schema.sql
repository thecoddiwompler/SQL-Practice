CREATE TABLE IF NOT EXISTS Stadium (id int, visit_date DATE NULL, people int);

TRUNCATE TABLE Stadium;

INSERT INTO
    Stadium (id, visit_date, people)
VALUES
    ('1', '2017-01-01', '10'),
    ('2', '2017-01-02', '109'),
    ('3', '2017-01-03', '150'),
    ('4', '2017-01-04', '99'),
    ('5', '2017-01-05', '145'),
    ('6', '2017-01-06', '1455'),
    ('7', '2017-01-07', '199'),
    ('8', '2017-01-09', '188');

COMMIT;
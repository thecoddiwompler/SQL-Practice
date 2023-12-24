CREATE TABLE source(id int, name varchar(5));

CREATE TABLE target(id int, name varchar(5));

INSERT INTO
    source
VALUES
    (1, 'A'),
    (2, 'B'),
    (3, 'C'),
    (4, 'D');

INSERT INTO
    target
VALUES
    (1, 'A'),
    (2, 'B'),
    (4, 'X'),
    (5, 'F');

COMMIT;
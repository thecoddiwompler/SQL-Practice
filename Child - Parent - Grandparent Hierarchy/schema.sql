CREATE TABLE persons (
    person varchar(10),
    parent varchar(10),
    person_status varchar(10)
);

INSERT INTO
    persons (person, parent, person_status)
VALUES
    ('A', 'X', 'Alive'),
    ('B', 'Y', 'Dead'),
    ('X', 'X1', 'Alive'),
    ('Y', 'Y1', 'Alive'),
    ('X1', 'X2', 'Alive'),
    ('Y1', 'Y2', 'Dead');

COMMIT;
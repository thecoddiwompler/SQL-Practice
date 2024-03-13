DROP TABLE IF EXISTS mountain_huts;

CREATE TABLE mountain_huts (
    id integer NOT NULL UNIQUE,
    name varchar(40) NOT NULL UNIQUE,
    altitude integer NOT NULL
);

INSERT INTO mountain_huts
VALUES
    (1, 'Dakonat', 1900),
    (2, 'Natisa', 2100),
    (3, 'Gajantut', 1600),
    (4, 'Rifat', 782),
    (5, 'Tupur', 1370);

COMMIT;

DROP TABLE IF EXISTS trails;

CREATE TABLE trails (
    hut1 integer NOT NULL,
    hut2 integer NOT NULL
);

INSERT INTO trails
VALUES
    (1, 3),
    (3, 2),
    (3, 5),
    (4, 5),
    (1, 5);

COMMIT;
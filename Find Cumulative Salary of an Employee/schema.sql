CREATE TABLE employee (
    id int,
    MONTH int,
    salary int,
    PRIMARY KEY(id, MONTH)
);

-- Insert Query:
INSERT INTO
    employee (id, MONTH, salary)
VALUES
    (1, 1, 20),
    (2, 1, 20),
    (1, 2, 30),
    (2, 2, 30),
    (3, 2, 40),
    (1, 3, 40),
    (3, 3, 60),
    (1, 4, 60),
    (3, 4, 70),
    (1, 7, 90),
    (1, 8, 90);

COMMIT;
CREATE TABLE job_positions (
    id int,
    title varchar(100),
    groups varchar(10),
    levels varchar(10),
    payscale int,
    totalpost int
);

CREATE TABLE job_employees (
    id int,
    name varchar(100),
    position_id int
);

INSERT INTO
    job_positions
VALUES
    (1, 'General manager', 'A', 'l-15', 10000, 1),
    (2, 'Manager', 'B', 'l-14', 9000, 5),
    (3, 'Asst. Manager', 'C', 'l-13', 8000, 10);

COMMIT;

INSERT INTO
    job_employees
VALUES
    (1, 'John Smith', 1),
    (2, 'Jane Doe', 2),
    (3, 'Michael Brown', 2),
    (4, 'Emily Johnson', 2),
    (5, 'William Lee', 3),
    (6, 'Jessica Clark', 3),
    (7, 'Christopher Harris', 3),
    (8, 'Olivia Wilson', 3),
    (9, 'Daniel Martinez', 3),
    (10, 'Sophia Miller', 3);

COMMIT;
CREATE SCHEMA employees;

CREATE TABLE employees.candidates(
    id int PRIMARY KEY,
    positions varchar(10) NOT NULL,
    salary int NOT NULL
);

--Test Case 1
TRUNCATE TABLE employees.candidates;

INSERT INTO
    employees.candidates
VALUES
    (1, 'junior', 5000),
    (2, 'junior', 7000),
    (3, 'junior', 7000),
    (4, 'senior', 10000),
    (5, 'senior', 30000),
    (6, 'senior', 20000);

--Test Case 2
TRUNCATE TABLE employees.candidates;

INSERT INTO
    employees.candidates
VALUES
    (20, 'junior', 10000),
    (30, 'senior', 15000),
    (40, 'senior', 30000);

--Test Case 3
TRUNCATE TABLE employees.candidates;

INSERT INTO
    employees.candidates
VALUES
    (1, 'junior', 15000),
    (2, 'junior', 15000),
    (3, 'junior', 20000),
    (4, 'senior', 60000);

--Test Case 4
TRUNCATE TABLE employees.candidates;

INSERT INTO
    employees.candidates
VALUES
    (10, 'junior', 10000),
    (40, 'junior', 10000),
    (20, 'senior', 15000),
    (30, 'senior', 30000),
    (50, 'senior', 15000);
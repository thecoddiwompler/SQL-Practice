CREATE TABLE IF NOT EXISTS Employee (
    id int,
    name varchar(255),
    salary int,
    departmentId int
);

CREATE TABLE IF NOT EXISTS Department (id int, name varchar(255));

TRUNCATE TABLE Employee;

INSERT INTO
    Employee (id, name, salary, departmentId)
VALUES
    (1, 'Joe', 85000, 1),
    (2, 'Henry', 80000, 2),
    (3, 'Sam', 60000, 2),
    (4, 'Max', 90000, 1),
    (5, 'Janet', 69000, 1),
    (6, 'Randy', 85000, 1),
    (7, 'Will', 70000, 1);

TRUNCATE TABLE Department;

INSERT INTO
    Department (id, name)
VALUES
    (1, 'IT'),
    (2, 'Sales');
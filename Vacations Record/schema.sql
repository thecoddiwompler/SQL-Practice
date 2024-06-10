DROP TABLE IF EXISTS vacation_plans;

CREATE TABLE vacation_plans (
    id int PRIMARY KEY,
    emp_id int,
    from_dt date,
    to_dt date
);

INSERT INTO vacation_plans (id, emp_id, from_dt, to_dt)
VALUES
    (1, 1, '2024-02-12', '2024-02-16'),
    (2, 2, '2024-02-20', '2024-02-29'),
    (3, 3, '2024-03-01', '2024-03-31'),
    (4, 1, '2024-04-11', '2024-04-23'),
    (5, 4, '2024-06-01', '2024-06-30'),
    (6, 3, '2024-07-05', '2024-07-15'),
    (7, 3, '2024-08-28', '2024-09-15');


DROP TABLE IF EXISTS leave_balance;

CREATE TABLE leave_balance (emp_id int, balance int);

INSERT INTO leave_balance (emp_id, balance)
VALUES
    (1, 12),
    (2, 10),
    (3, 26),
    (4, 20),
    (5, 14);
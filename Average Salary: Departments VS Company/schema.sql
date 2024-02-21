-- Create the 'salary' table
CREATE TABLE IF NOT EXISTS salary (
    id INT,
    employee_id INT,
    amount INT,
    pay_date DATE
);

-- Insert data into the 'salary' table
INSERT INTO
    salary (id, employee_id, amount, pay_date)
VALUES
    (1, 1, 9000, '2017-03-31'),
    (2, 2, 6000, '2017-03-31'),
    (3, 3, 10000, '2017-03-31'),
    (4, 1, 7000, '2017-02-28'),
    (5, 2, 6000, '2017-02-28'),
    (6, 3, 8000, '2017-02-28');

COMMIT;

-- Create the 'employee' table
CREATE TABLE IF NOT EXISTS employee (employee_id INT, department_id INT);

-- Insert data into the 'employee' table
INSERT INTO
    employee (employee_id, department_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 2);

COMMIT;
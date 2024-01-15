-- Create Table
CREATE TABLE employee_log (
    emp_id INT,
    log_date DATE,
    flag CHAR(1)
);

-- Insert Data
INSERT INTO
    employee_log (emp_id, log_date, flag)
VALUES
    (101, '2024-01-02', 'N'),
    (101, '2024-01-03', 'Y'),
    (101, '2024-01-04', 'N'),
    (101, '2024-01-07', 'Y'),
    (102, '2024-01-01', 'N'),
    (102, '2024-01-02', 'Y'),
    (102, '2024-01-03', 'Y'),
    (102, '2024-01-04', 'N'),
    (102, '2024-01-05', 'Y'),
    (102, '2024-01-06', 'Y'),
    (102, '2024-01-07', 'Y'),
    (103, '2024-01-01', 'N'),
    (103, '2024-01-04', 'N'),
    (103, '2024-01-05', 'Y'),
    (103, '2024-01-06', 'Y'),
    (103, '2024-01-07', 'N');

COMMIT;
-- Create the schema if it doesn't exist
CREATE SCHEMA IF NOT EXISTS employees;

-- Create the table within the employees schema
CREATE TABLE employees.employee_checkin_details (
    employeeid INT,
    entry_details VARCHAR(10),
    timestamp_details TIMESTAMP
);

-- Insert data into the table
INSERT INTO employees.employee_checkin_details (employeeid, entry_details, timestamp_details)
VALUES
    (1000, 'login', '2023-06-16 01:00:15.34'),
    (1000, 'login', '2023-06-16 02:00:15.34'),
    (1000, 'login', '2023-06-16 03:00:15.34'),
    (1000, 'logout', '2023-06-16 12:00:15.34'),
    (1001, 'login', '2023-06-16 01:00:15.34'),
    (1001, 'login', '2023-06-16 02:00:15.34'),
    (1001, 'login', '2023-06-16 03:00:15.34'),
    (1001, 'logout', '2023-06-16 12:00:15.34');

-- Commit the transaction
COMMIT;


-- Create the table within the employees schema
CREATE TABLE employees.employee_details (
    employeeid INT,
    phone_number VARCHAR(20),
    isdefault BOOLEAN,
    PRIMARY KEY (employeeid, phone_number)
);

-- Insert data into the table
INSERT INTO employees.employee_details (employeeid, phone_number, isdefault)
VALUES
    (1001, '9999', false),
    (1001, '1111', false),
    (1001, '2222', true),
    (1003, '3333', false);

-- Commit the transaction
COMMIT;

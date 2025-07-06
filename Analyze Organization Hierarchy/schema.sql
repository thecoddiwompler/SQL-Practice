-- Drop table if it exists
DROP TABLE IF EXISTS Employees;

-- Create the Employees table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT,
    salary INT,
    department VARCHAR(50),
    FOREIGN KEY (manager_id) REFERENCES Employees(employee_id)
);

-- Insert data into Employees table
INSERT INTO
    Employees (
        employee_id,
        employee_name,
        manager_id,
        salary,
        department
    )
VALUES
    (1, 'Alice', NULL, 12000, 'Executive'),
    (2, 'Bob', 1, 10000, 'Sales'),
    (3, 'Charlie', 1, 10000, 'Engineering'),
    (4, 'David', 2, 7500, 'Sales'),
    (5, 'Eva', 2, 7500, 'Sales'),
    (6, 'Frank', 3, 9000, 'Engineering'),
    (7, 'Grace', 3, 8500, 'Engineering'),
    (8, 'Hank', 4, 6000, 'Sales'),
    (9, 'Ivy', 6, 7000, 'Engineering'),
    (10, 'Judy', 6, 7000, 'Engineering');
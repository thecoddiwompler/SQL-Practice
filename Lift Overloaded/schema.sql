CREATE TABLE lifts (id INT PRIMARY KEY, capacity_kg INT);

CREATE TABLE lift_passengers (
    passenger_name VARCHAR(100),
    weight_kg INT,
    lift_id INT,
    FOREIGN KEY (lift_id) REFERENCES lifts(id)
);

INSERT INTO
    lifts (id, capacity_kg)
VALUES
    (1, 250),
    (2, 280);

INSERT INTO
    lift_passengers (passenger_name, weight_kg, lift_id)
VALUES
    ('Dheeraj', 78, 1),
    ('Adarsh', 70, 1),
    ('Rahul', 80, 1),
    ('Srinivas', 85, 1),
    ('Dushyant', 95, 1),
    ('Priti', 50, 2),
    ('Neha', 53, 2),
    ('Vimal', 58, 2),
    ('Himanshi', 62, 2),
    ('Akshay', 73, 2),
    ('Devendra', 78, 2),
    ('Amrendra', 83, 2);
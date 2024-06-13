DROP TABLE IF EXISTS student_marks;

DROP TABLE IF EXISTS students;

DROP TABLE IF EXISTS subjects;


CREATE TABLE students (
    roll_no varchar(20) PRIMARY KEY,
    name varchar(30)
);

INSERT INTO
    students (roll_no, name)
VALUES
    ('2GR5CS011', 'Maryam'),
    ('2GR5CS012', 'Rose'),
    ('2GR5CS013', 'Alice'),
    ('2GR5CS014', 'Lilly'),
    ('2GR5CS015', 'Anna'),
    ('2GR5CS016', 'Zoya');


CREATE TABLE student_marks (
    student_id varchar(20) PRIMARY KEY REFERENCES students(roll_no),
    S1 int,
    S2 int,
    S3 int,
    S4 int,
    S5 int,
    S6 int
);

INSERT INTO
    student_marks (
        student_id,
        S1,
        S2,
        S3,
        S4,
        S5,
        S6
    )
VALUES
    ('2GR5CS011', 75, NULL, 56, 69, 82, NULL),
    ('2GR5CS012', 57, 46, 32, 30, NULL, NULL),
    ('2GR5CS013', 40, 52, 56, NULL, 31, 40),
    ('2GR5CS014', 65, 73, NULL, 81, 33, 41),
    ('2GR5CS015', 98, NULL, 94, NULL, 90, 20),
    ('2GR5CS016', NULL, 98, 98, 81, 84, 89);


CREATE TABLE subjects (
    id varchar(20) PRIMARY KEY,
    name varchar(30),
    pass_marks int CHECK (pass_marks >= 30)
);

INSERT INTO
    subjects (id, name, pass_marks)
VALUES
    ('S1', 'Mathematics', 40),
    ('S2', 'Algorithms', 35),
    ('S3', 'Computer Networks', 35),
    ('S4', 'Data Structure', 40),
    ('S5', 'Artificial Intelligence', 30),
    ('S6', 'Object Oriented Programming', 35);
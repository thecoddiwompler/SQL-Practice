CREATE SCHEMA school;

CREATE TABLE school.students
(
student_id int,
student_name varchar(20)
);

INSERT INTO school.students 
VALUES  (1,'Daniel'),
        (2,'Jade'),
        (3,'Stella'),
        (4,'Jonathan'),
        (5,'Will');

COMMIT;

CREATE TABLE school.exams
(
exam_id int,
student_id int,
score int);

INSERT INTO school.exams VALUES
(10,1,70),(10,2,80),(10,3,90),(20,1,80),(30,1,70),(30,3,80),(30,4,90),(40,1,60)
,(40,2,70),(40,4,80);

COMMIT;

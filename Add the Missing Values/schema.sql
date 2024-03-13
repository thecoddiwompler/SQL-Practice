CREATE TABLE job_skills (
    row_id int,
    job_role varchar(20),
    skills varchar(20)
);

INSERT INTO job_skills
VALUES
    (1, 'Data Engineer', 'SQL'),
    (2, NULL, 'Python'),
    (3, NULL, 'AWS'),
    (4, NULL, 'Snowflake'),
    (5, NULL, 'Apache Spark'),
    (6, 'Web Developer', 'Java'),
    (7, NULL, 'HTML'),
    (8, NULL, 'CSS'),
    (9, 'Data Scientist', 'Python'),
    (10, NULL, 'Machine Learning'),
    (11, NULL, 'Deep Learning'),
    (12, NULL, 'Tableau');

COMMIT;
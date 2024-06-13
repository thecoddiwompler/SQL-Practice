WITH filtered_marks AS (
    SELECT
        student_id,
        'S1' AS subject,
        S1 AS marks
    FROM
        student_marks
    UNION
    SELECT
        student_id,
        'S2' AS subject,
        S2 AS marks
    FROM
        student_marks
    UNION
    SELECT
        student_id,
        'S3' AS subject,
        S3 AS marks
    FROM
        student_marks
    UNION
    SELECT
        student_id,
        'S4' AS subject,
        S4 AS marks
    FROM
        student_marks
    UNION
    SELECT
        student_id,
        'S5' AS subject,
        S5 AS marks
    FROM
        student_marks
    UNION
    SELECT
        student_id,
        'S6' AS subject,
        S6 AS marks
    FROM
        student_marks
),
student_detail AS (
    SELECT
        b.student_id,
        a.name student_name,
        c.name subject_name,
        b.marks,
        c.pass_marks
    FROM
        students a
        INNER JOIN filtered_marks b ON a.roll_no = b.student_id
        INNER JOIN subjects c ON c.id = b.subject
),
result AS (
    SELECT
        student_id,
        student_name,
        array_agg(subject_name) filter(
            WHERE
                marks < pass_marks
        ) failed_subjects,
        avg(marks) filter(
            WHERE
                marks IS NOT NULL
        ) percentage_marks
    FROM
        student_detail
    GROUP BY
        student_id,
        student_name
)
SELECT
    student_id,
    student_name,
    ROUND(percentage_marks, 2) percentage_marks,
    failed_subjects,
    CASE
        WHEN failed_subjects IS NOT NULL THEN 'Fail'
        WHEN percentage_marks >= 70 THEN 'First Class'
        WHEN percentage_marks < 70
        AND percentage_marks >= 50 THEN 'Second Class'
        WHEN percentage_marks < 50 THEN 'Third Class'
    END AS result
FROM
    result;
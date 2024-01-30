WITH cte AS(
    SELECT
        b.student_id,
        b.student_name,
        a.score,
        RANK() over(
            PARTITION by exam_id
            ORDER BY
                score DESC
        ) top_rank,
        RANK() over(
            PARTITION by exam_id
            ORDER BY
                score
        ) bottom_rank
    FROM
        school.students b
        LEFT OUTER JOIN school.exams a ON a.student_id = b.student_id
),
anti_sol AS(
    SELECT
        student_id,
        student_name
    FROM
        cte
    WHERE
        top_rank = 1
        OR bottom_rank = 1
        OR score IS NULL
)
SELECT
    student_id,
    student_name
FROM
    school.students
WHERE
    student_id NOT IN (
        SELECT
            student_id
        FROM
            anti_sol
    );
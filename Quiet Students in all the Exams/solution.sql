WITH cte AS (
    SELECT exam_id, MAX(score) max_score, MIN(score) min_score
    FROM school.exams
    GROUP BY exam_id
),
loud_students AS (
    SELECT a.student_id
    FROM school.exams a
    INNER JOIN cte b
    ON a.exam_id=b.exam_id
    AND (a.score=b.max_score OR a.score=b.min_score)
)
SELECT b.student_id, b.student_name
FROM school.exams a
INNER JOIN school.students b 
ON a.student_id=b.student_id
WHERE a.student_id NOT IN (SELECT student_id FROM loud_students)
GROUP BY b.student_id, b.student_name

WITH senior AS(
    SELECT id, salary, SUM(salary) OVER(ORDER BY salary) sal_senior
    FROM employees.candidates
    WHERE positions = 'senior'
)
,
junior AS (
    SELECT id, salary, SUM(salary) OVER(ORDER BY salary) sal_junior
    FROM employees.candidates
    WHERE positions = 'junior'
),
total_senior AS (
    SELECT COUNT(id) SENIOR, COALESCE(MAX(sal_senior),0) total_sal_senior
    FROM senior
    WHERE sal_senior<=50000
),
total_junior AS (
    SELECT COUNT(junior.id) JUNIOR
    FROM junior
    CROSS JOIN total_senior
    WHERE junior.sal_junior<=50000-total_senior.total_sal_senior
)
SELECT JUNIOR, SENIOR
FROM total_junior
CROSS JOIN total_senior

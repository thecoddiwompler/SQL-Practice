WITH cte AS (
    SELECT b.name department, a.name employee, a.salary,
    DENSE_RANK() OVER(PARTITION BY a.departmentId ORDER BY a.salary DESC) rnk
    FROM employee a
    INNER JOIN department b
    ON a.departmentId=b.id
)
SELECT department, employee, salary
FROM cte
WHERE rnk<4

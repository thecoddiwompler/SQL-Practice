WITH department_avg AS (
	SELECT department_id, SUM(salary) department_salary, COUNT(emp_id) employee_count, AVG(salary) department_average_salary
	FROM emp
	GROUP BY department_id
),
total AS (
	SELECT COUNT(emp_id) total_employee_count, SUM(salary) total_salary
	FROM emp
),
sol AS (
	SELECT department_id, 
	CASE WHEN department_average_salary < ((total_salary-department_salary)*1.0/(total_employee_count-employee_count)) THEN 'Y' ELSE 'N' END AS ans_flag
	FROM department_avg
	CROSS JOIN total
)
SELECT department_id
FROM sol
WHERE ans_flag='Y'

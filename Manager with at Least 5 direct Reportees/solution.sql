WITH cte AS (
    SELECT managerId, count(ID) cnt 
    FROM Employee
    GROUP BY managerID
)
SELECT name
FROM Employee emp
INNER JOIN cte
ON emp.id=cte.managerId
WHERE cte.cnt>=5

SELECT 
CASE 
    WHEN a.id%2=0 THEN a.id-1 
    WHEN a.id IN (SELECT MAX(id) FROM seat) THEN a.id 
    ELSE a.id+1 
END AS id, a.student
FROM seat a
ORDER BY id

SELECT
    COUNT(a.person) person_count
FROM
    persons a
    INNER JOIN persons b ON a.parent = b.person
    INNER JOIN persons c ON b.parent = c.person
WHERE
    c.person_status = 'Alive';
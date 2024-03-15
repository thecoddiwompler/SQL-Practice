WITH recursive cte AS (
    SELECT
        min(serial_no) serial_no
    FROM
        invoice
    UNION
    SELECT
        serial_no + 1
    FROM
        cte
    WHERE
        serial_no + 1 <=(
            SELECT
                max(serial_no)
            FROM
                invoice
        )
)
SELECT
    a.serial_no
FROM
    cte a
    LEFT OUTER JOIN invoice b ON a.serial_no = b.serial_no
WHERE
    b.serial_no IS NULL
ORDER BY
    1;
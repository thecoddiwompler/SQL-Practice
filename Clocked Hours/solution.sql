WITH cte AS (
    SELECT
        a.empd_id,
        a.swipe entry,
        b.swipe exit
    FROM
        clocked_hours a
        INNER JOIN clocked_hours b ON a.empd_id = b.empd_id
        AND a.swipe <= b.swipe
        AND a.flag = 'I'
        AND b.flag = 'O'
),
swipe_details AS (
    SELECT
        empd_id,
        entry,
        min(exit) exit
    FROM
        cte
    GROUP BY
        empd_id,
        entry
)
SELECT
    empd_id,
    CONCAT(
        extract(
            HOUR
            FROM
                SUM(exit - entry)
        ),
        ' Hours ',
        extract(
            MINUTE
            FROM
                SUM(exit - entry)
        ),
        ' Minutes ',
        ROUND(
            extract(
                SECOND
                FROM
                    SUM(exit - entry)
            ),
            2
        ),
        ' Seconds'
    ) clocked_time
FROM
    swipe_details
GROUP BY
    empd_id;
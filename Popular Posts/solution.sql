WITH session_length AS (
    SELECT
        session_id,
        EXTRACT(
            SECOND
            FROM
                session_endtime - session_starttime
        ) +(
            60 * EXTRACT(
                MINUTE
                FROM
                    session_endtime - session_starttime
            )
        ) +(
            3600 * EXTRACT(
                HOUR
                FROM
                    session_endtime - session_starttime
            )
        ) duration
    FROM
        user_sessions
),
post_views_timer AS (
    SELECT
        a.post_id,
        (a.perc_viewed * b.duration) / 100 viewtime
    FROM
        post_views a
        INNER JOIN session_length b ON a.session_id = b.session_id
)
SELECT
    post_id,
    SUM(viewtime) total_viewtime
FROM
    post_views_timer
GROUP BY
    post_id
HAVING
    SUM(viewtime) > 5;
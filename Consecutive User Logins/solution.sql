WITH distinct_user_login AS (
    SELECT
        DISTINCT user_id,
        login_date
    FROM
        user_login
),
ranked_user_login AS (
    SELECT
        user_id,
        login_date,
        rank() over(
            PARTITION by user_id
            ORDER BY
                login_date
        ) rnk
    FROM
        distinct_user_login
),
all_consecutive_login AS (
    SELECT
        a.user_id,
        b.login_date start_date,
        a.login_date end_date
    FROM
        ranked_user_login a
        INNER JOIN ranked_user_login b ON a.login_date > b.login_date
        AND a.user_id = b.user_id
        AND a.login_date - b.login_date = a.rnk - b.rnk
),
filtered_start_date AS (
    SELECT
        user_id,
        start_date,
        max(end_date) end_date
    FROM
        all_consecutive_login
    GROUP BY
        user_id,
        start_date
),
filtered_end_date AS (
    SELECT
        user_id,
        min(start_date) start_date,
        end_date
    FROM
        filtered_start_date
    GROUP BY
        user_id,
        end_date
)
SELECT
    user_id,
    start_date,
    end_date,
    end_date - start_date + 1 consecutive_days
FROM
    filtered_end_date
WHERE
    end_date - start_date + 1 >= 5
ORDER BY
    user_id;
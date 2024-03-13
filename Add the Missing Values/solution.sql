WITH pre AS (
    SELECT
        a.row_id,
        coalesce(a.job_role, b.job_role) job_role,
        a.skills,
        b.row_id dec_row
    FROM
        job_skills a
        LEFT OUTER JOIN job_skills b ON a.row_id >= b.row_id
    WHERE
        b.row_id IS NOT NULL
        AND b.job_role IS NOT NULL
        AND coalesce(a.job_role, b.job_role) IS NOT NULL
),
intr AS (
    SELECT
        row_id,
        skills,
        max(dec_row) dec_row
    FROM
        pre
    GROUP BY
        row_id,
        skills
)
SELECT
    a.row_id,
    a.job_role,
    a.skills
FROM
    pre a
    INNER JOIN intr b ON a.row_id = b.row_id
    AND a.dec_row = b.dec_row;
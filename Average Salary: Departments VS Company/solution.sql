WITH company_avg AS (
    SELECT
        to_char(pay_date, 'YYYY-MM') pay_month,
        AVG(amount) company_avg
    FROM
        salary
    GROUP BY
        to_char(pay_date, 'YYYY-MM')
),
department_avg AS (
    SELECT
        to_char(a.pay_date, 'YYYY-MM') pay_month,
        b.department_id,
        AVG(a.amount) department_avg
    FROM
        salary a
        INNER JOIN employee b ON a.employee_id = b.employee_id
    GROUP BY
        to_char(a.pay_date, 'YYYY-MM'),
        b.department_id
)
SELECT
    a.pay_month,
    b.department_id,
    CASE
        WHEN b.department_avg > a.company_avg THEN 'higher'
        WHEN b.department_avg < a.company_avg THEN 'lower'
        ELSE 'same'
    END AS comparison
FROM
    company_avg a
    INNER JOIN department_avg b ON a.pay_month = b.pay_month
ORDER BY
    department_id,
    pay_month;
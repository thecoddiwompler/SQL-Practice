WITH cte AS (
	SELECT
		teamid,
		memberid,
		CASE
			WHEN criteria1 = 'Y'
			AND criteria2 = 'Y' THEN 'Y'
			ELSE 'N'
		END AS personal_flag
	FROM
		ameriprise_llc
),
qualified_member_team_count AS (
	SELECT
		teamid,
		COUNT(personal_flag) personal_flag_counter
	FROM
		cte
	WHERE
		personal_flag = 'Y'
	GROUP BY
		teamid
	HAVING
		COUNT(personal_flag) > 1
)
SELECT
	cte.teamid,
	cte.memberid
FROM
	cte
	INNER JOIN qualified_member_team_count ON cte.teamid = qualified_member_team_count.teamid
WHERE
	cte.personal_flag = 'Y'
WITH cte AS (
	SELECT DISTINCT team1 team FROM MatchResults
	UNION
	SELECT DISTINCT team2 team FROM MatchResults
),
played AS(
	SELECT a.team, COUNT(a.team) played
	FROM cte a
	LEFT OUTER JOIN MatchResults b
	ON a.team=b.team1
	LEFT OUTER JOIN MatchResults c
	ON a.team=c.team2
	GROUP BY a.team
),
won AS (
	SELECT a.team, COUNT(b.won) won
	FROM cte a
	LEFT OUTER JOIN MatchResults b
	ON a.team=b.won
	GROUP BY a.team
)
SELECT a.team, b.played, c.won, (b.played-c.won) lost
FROM cte a
INNER JOIN played b
ON a.team=b.team
INNER JOIN won C 
ON a.team=c.team
ORDER BY c.won DESC

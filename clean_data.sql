WITH rb AS (
SELECT 
	RK,
    TIERS,
    `PLAYER NAME`,
    "RB" AS `Position`,
    rb_23.FPTS,
    rb_23.AVG_FPTS
FROM FantasyFootball.`24-rb-rankings` AS rb_24
LEFT JOIN (
	SELECT
		SUBSTR(Player,1,LOCATE("(",Player)-2) AS player,
		FPTS,
		ROUND(FPTS/17, 1) AS AVG_FPTS
	FROM FantasyFootball.`rb-23`
) AS rb_23
ON rb_24.`PLAYER NAME` = rb_23.player
WHERE RK <= 50
),
wr AS (
SELECT 
	RK,
    TIERS,
    `PLAYER NAME`,
    "WR" AS `Position`,
    wr_23.FPTS,
    wr_23.AVG_FPTS
FROM FantasyFootball.`24-wr-rankings` AS wr_24
LEFT JOIN (
	SELECT
		SUBSTR(Player,1,LOCATE("(",Player)-2) AS player,
		FPTS,
		ROUND(FPTS/17, 1) AS AVG_FPTS
	FROM FantasyFootball.`wr-23`
) AS wr_23
ON wr_24.`PLAYER NAME` = wr_23.player
WHERE RK <= 50
)
SELECT *
FROM rb
UNION
SELECT *
FROM wr;
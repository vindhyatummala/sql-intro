-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


SELECT t.name, p.first_name, p.last_name, t.year, MAX(s.home_runs)
FROM players p
INNER JOIN stats s
ON p.id = s.player_id
INNER JOIN teams t
ON t.id = s.team_id
WHERE year = 2019
GROUP BY year
;


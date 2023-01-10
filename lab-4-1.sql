-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935


SELECT p.first_name, p.last_name, SUM(s.hits)
FROM players p
INNER JOIN stats s
ON p.id = s.player_id
WHERE p.first_name = "Barry"
AND p.last_name = "Bonds"
GROUP BY p.first_name, p.last_name
;
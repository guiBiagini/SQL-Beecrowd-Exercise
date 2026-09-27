-- beecrowd 2988 - Campeonato Cearense
-- https://judge.beecrowd.com/pt/problems/view/2988

WITH r AS (
  SELECT team_1 AS team,
         CASE WHEN team_1_goals > team_2_goals THEN 'W' WHEN team_1_goals < team_2_goals THEN 'L' ELSE 'D' END AS res
  FROM matches
  UNION ALL
  SELECT team_2,
         CASE WHEN team_2_goals > team_1_goals THEN 'W' WHEN team_2_goals < team_1_goals THEN 'L' ELSE 'D' END
  FROM matches
)
SELECT t.name,
       COUNT(*) AS matches,
       COUNT(*) FILTER (WHERE r.res = 'W') AS victories,
       COUNT(*) FILTER (WHERE r.res = 'L') AS defeats,
       COUNT(*) FILTER (WHERE r.res = 'D') AS draws,
       COUNT(*) FILTER (WHERE r.res = 'W') * 3 + COUNT(*) FILTER (WHERE r.res = 'D') AS score
FROM teams t
JOIN r ON r.team = t.id
GROUP BY t.id, t.name
ORDER BY score DESC, t.name;

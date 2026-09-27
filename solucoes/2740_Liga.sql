-- beecrowd 2740 - Liga
-- https://judge.beecrowd.com/pt/problems/view/2740

(SELECT 'Podium: ' || team AS name FROM league ORDER BY position LIMIT 3)
UNION ALL
(SELECT 'Demoted: ' || team FROM (SELECT * FROM league ORDER BY position DESC LIMIT 2) t ORDER BY position);

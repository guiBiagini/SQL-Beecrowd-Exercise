-- beecrowd 3480 - Cadeiras Adjacentes
-- https://judge.beecrowd.com/pt/problems/view/3480

SELECT c1.queue, c1.id AS left, c2.id AS right
FROM chairs c1
JOIN chairs c2 ON c2.queue = c1.queue AND c2.id = c1.id + 1
WHERE c1.available AND c2.available
ORDER BY c1.id;

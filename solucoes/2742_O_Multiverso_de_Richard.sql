-- beecrowd 2742 - O Multiverso de Richard
-- https://judge.beecrowd.com/pt/problems/view/2742

SELECT l.name, ROUND(l.omega * 1.618, 3) AS "Fator N"
FROM life_registry l
JOIN dimensions d ON d.id = l.dimensions_id
WHERE l.name LIKE 'Richard%' AND d.name IN ('C875', 'C774')
ORDER BY l.omega;

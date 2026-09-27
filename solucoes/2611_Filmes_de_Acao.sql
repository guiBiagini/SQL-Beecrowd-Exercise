-- beecrowd 2611 - Filmes de Ação
-- https://judge.beecrowd.com/pt/problems/view/2611

SELECT m.id, m.name
FROM movies m
JOIN genres g ON g.id = m.id_genres
WHERE g.description = 'Action';

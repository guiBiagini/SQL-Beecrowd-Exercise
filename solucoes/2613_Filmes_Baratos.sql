-- beecrowd 2613 - Filmes Baratos
-- https://judge.beecrowd.com/pt/problems/view/2613

SELECT m.id, m.name
FROM movies m
JOIN prices p ON p.id = m.id_prices
WHERE p.value < 2.00;

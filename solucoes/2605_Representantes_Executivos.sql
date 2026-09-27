-- beecrowd 2605 - Representantes Executivos
-- https://judge.beecrowd.com/pt/problems/view/2605

SELECT p.name, pr.name
FROM products p
JOIN providers pr ON pr.id = p.id_providers
WHERE p.id_categories = 6;

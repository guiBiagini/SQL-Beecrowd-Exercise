-- beecrowd 2621 - Quantidades Entre 10 e 20
-- https://judge.beecrowd.com/pt/problems/view/2621

SELECT p.name
FROM products p
JOIN providers pr ON pr.id = p.id_providers
WHERE p.amount BETWEEN 10 AND 20 AND pr.name LIKE 'P%';

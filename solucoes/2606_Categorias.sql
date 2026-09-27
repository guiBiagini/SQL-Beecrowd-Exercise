-- beecrowd 2606 - Categorias
-- https://judge.beecrowd.com/pt/problems/view/2606

SELECT p.id, p.name
FROM products p
JOIN categories c ON c.id = p.id_categories
WHERE c.name LIKE 'super%';

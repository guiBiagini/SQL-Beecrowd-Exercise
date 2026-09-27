-- beecrowd 2623 - Categorias com Vários Produtos
-- https://judge.beecrowd.com/pt/problems/view/2623

SELECT p.name, c.name
FROM products p
JOIN categories c ON c.id = p.id_categories
WHERE p.amount > 100 AND c.id IN (1, 2, 3, 6, 9)
ORDER BY c.id;

-- beecrowd 2609 - Produtos por Categorias
-- https://judge.beecrowd.com/pt/problems/view/2609

SELECT c.name, SUM(p.amount)
FROM categories c
JOIN products p ON p.id_categories = c.id
GROUP BY c.name;

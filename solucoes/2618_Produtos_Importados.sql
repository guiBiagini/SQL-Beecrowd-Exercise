-- beecrowd 2618 - Produtos Importados
-- https://judge.beecrowd.com/pt/problems/view/2618

SELECT p.name, pr.name, c.name
FROM products p
JOIN providers pr ON pr.id = p.id_providers
JOIN categories c ON c.id = p.id_categories
WHERE pr.name = 'Sansul SA' AND c.name = 'Imported';

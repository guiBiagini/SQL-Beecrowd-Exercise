-- beecrowd 2617 - Fornecedor Ajax SA
-- https://judge.beecrowd.com/pt/problems/view/2617

SELECT p.name, pr.name
FROM products p
JOIN providers pr ON pr.id = p.id_providers
WHERE pr.name = 'Ajax SA';

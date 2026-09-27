-- beecrowd 2616 - Nenhuma Locação
-- https://judge.beecrowd.com/pt/problems/view/2616

SELECT c.id, c.name
FROM customers c
WHERE NOT EXISTS (SELECT 1 FROM locations l WHERE l.id_customers = c.id)
ORDER BY c.id;

-- beecrowd 2620 - Pedidos no Primeiro Semestre
-- https://judge.beecrowd.com/pt/problems/view/2620

SELECT c.name, o.id
FROM customers c
JOIN orders o ON o.id_customers = c.id
WHERE o.orders_date BETWEEN '2016-01-01' AND '2016-06-30';

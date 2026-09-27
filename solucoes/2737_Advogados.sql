-- beecrowd 2737 - Advogados
-- https://judge.beecrowd.com/pt/problems/view/2737

(SELECT name, customers_number FROM lawyers ORDER BY customers_number DESC LIMIT 1)
UNION ALL
(SELECT name, customers_number FROM lawyers ORDER BY customers_number ASC LIMIT 1)
UNION ALL
(SELECT 'Average', ROUND(AVG(customers_number)) FROM lawyers);

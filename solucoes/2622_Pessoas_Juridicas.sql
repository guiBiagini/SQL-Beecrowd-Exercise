-- beecrowd 2622 - Pessoas Jurídicas
-- https://judge.beecrowd.com/pt/problems/view/2622

SELECT c.name
FROM customers c
JOIN legal_person lp ON lp.id_customers = c.id;

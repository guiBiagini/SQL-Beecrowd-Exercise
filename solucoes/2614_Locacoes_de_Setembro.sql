-- beecrowd 2614 - Locações de Setembro
-- https://judge.beecrowd.com/pt/problems/view/2614

SELECT c.name, r.rentals_date
FROM customers c
JOIN rentals r ON r.id_customers = c.id
WHERE r.rentals_date >= '2016-09-01' AND r.rentals_date < '2016-10-01';

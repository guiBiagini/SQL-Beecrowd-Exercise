-- beecrowd 2745 - Taxas
-- https://judge.beecrowd.com/pt/problems/view/2745

SELECT name, ROUND(salary * 0.1, 2) AS tax
FROM people
WHERE salary > 3000;

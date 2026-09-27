-- beecrowd 2743 - Quantidade de Caracteres
-- https://judge.beecrowd.com/pt/problems/view/2743

SELECT name, LENGTH(name) AS length
FROM people
ORDER BY length DESC;

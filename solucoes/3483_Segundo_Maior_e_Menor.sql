-- beecrowd 3483 - Segundo Maior e Menor
-- https://judge.beecrowd.com/pt/problems/view/3483

(SELECT city_name, population FROM cities ORDER BY population DESC OFFSET 1 LIMIT 1)
UNION ALL
(SELECT city_name, population FROM cities ORDER BY population ASC OFFSET 1 LIMIT 1);

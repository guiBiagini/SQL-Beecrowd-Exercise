-- beecrowd 3001 - Update sem Where
-- https://judge.beecrowd.com/pt/problems/view/3001

SELECT name,
       CASE type WHEN 'A' THEN 20.0 WHEN 'B' THEN 70.0 ELSE 530.5 END AS price
FROM products
ORDER BY type, id DESC;

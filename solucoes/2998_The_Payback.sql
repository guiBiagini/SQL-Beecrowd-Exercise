-- beecrowd 2998 - The Payback
-- https://judge.beecrowd.com/pt/problems/view/2998

WITH cum AS (
  SELECT c.id, c.name, c.investment, o.month,
         SUM(o.profit) OVER (PARTITION BY c.id ORDER BY o.month) AS acc
  FROM clients c
  JOIN operations o ON o.client_id = c.id
)
SELECT name, investment, month AS month_of_payback, ret AS "return"
FROM (
  SELECT DISTINCT ON (id) name, investment, month, acc - investment AS ret
  FROM cum
  WHERE acc >= investment
  ORDER BY id, month
) p
ORDER BY ret DESC;

-- beecrowd 2999 - Maior Sálario da Divisão
-- https://judge.beecrowd.com/pt/problems/view/2999

WITH s AS (
  SELECT e.matr, e.nome, e.lotacao_div, (COALESCE((SELECT SUM(v.valor) FROM emp_venc ev JOIN vencimento v ON v.cod_venc = ev.cod_venc WHERE ev.matr = e.matr), 0)
  - COALESCE((SELECT SUM(d.valor) FROM emp_desc ed JOIN desconto d ON d.cod_desc = ed.cod_desc WHERE ed.matr = e.matr), 0)) AS liquido
  FROM empregado e
)
SELECT s.nome, ROUND(s.liquido, 2) AS salario
FROM s
WHERE s.liquido >= 8000
  AND s.liquido > (SELECT AVG(s2.liquido) FROM s s2 WHERE s2.lotacao_div = s.lotacao_div)
ORDER BY s.lotacao_div;

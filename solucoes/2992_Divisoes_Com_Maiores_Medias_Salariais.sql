-- beecrowd 2992 - Divisões Com Maiores Médias Salariais
-- https://judge.beecrowd.com/pt/problems/view/2992

WITH m AS (
  SELECT d.nome AS departamento, dv.nome AS divisao, ROUND(AVG(s.liquido), 2) AS media
  FROM (
    SELECT e.lotacao_div, (COALESCE((SELECT SUM(v.valor) FROM emp_venc ev JOIN vencimento v ON v.cod_venc = ev.cod_venc WHERE ev.matr = e.matr), 0)
  - COALESCE((SELECT SUM(d.valor) FROM emp_desc ed JOIN desconto d ON d.cod_desc = ed.cod_desc WHERE ed.matr = e.matr), 0)) AS liquido
    FROM empregado e
  ) s
  JOIN divisao dv ON dv.cod_divisao = s.lotacao_div
  JOIN departamento d ON d.cod_dep = dv.cod_dep
  GROUP BY d.nome, dv.nome
)
SELECT departamento, divisao, media
FROM m
WHERE media = (SELECT MAX(m2.media) FROM m m2 WHERE m2.departamento = m.departamento)
ORDER BY media DESC;

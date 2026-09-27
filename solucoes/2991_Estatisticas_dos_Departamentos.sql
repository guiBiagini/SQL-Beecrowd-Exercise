-- beecrowd 2991 - Estatísticas dos Departamentos
-- https://judge.beecrowd.com/pt/problems/view/2991

SELECT d.nome AS "Nome Departamento",
       COUNT(*) AS "Numero de Empregados",
       ROUND(AVG(s.liquido), 2) AS "Media Salarial",
       ROUND(MAX(s.liquido), 2) AS "Maior Salario",
       ROUND(MIN(s.liquido), 2) AS "Menor Salario"
FROM (
  SELECT e.lotacao, (COALESCE((SELECT SUM(v.valor) FROM emp_venc ev JOIN vencimento v ON v.cod_venc = ev.cod_venc WHERE ev.matr = e.matr), 0)
  - COALESCE((SELECT SUM(d.valor) FROM emp_desc ed JOIN desconto d ON d.cod_desc = ed.cod_desc WHERE ed.matr = e.matr), 0)) AS liquido
  FROM empregado e
) s
JOIN departamento d ON d.cod_dep = s.lotacao
GROUP BY d.nome
ORDER BY "Media Salarial";

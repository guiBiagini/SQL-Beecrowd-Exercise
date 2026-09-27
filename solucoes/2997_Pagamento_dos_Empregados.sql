-- beecrowd 2997 - Pagamento dos Empregados
-- https://judge.beecrowd.com/pt/problems/view/2997

SELECT d.nome AS "Departamento",
       e.nome AS "Empregado",
       COALESCE((SELECT SUM(v.valor) FROM emp_venc ev JOIN vencimento v ON v.cod_venc = ev.cod_venc WHERE ev.matr = e.matr), 0) AS "Salario Bruto",
       COALESCE((SELECT SUM(d.valor) FROM emp_desc ed JOIN desconto d ON d.cod_desc = ed.cod_desc WHERE ed.matr = e.matr), 0) AS "Total Desconto",
       (COALESCE((SELECT SUM(v.valor) FROM emp_venc ev JOIN vencimento v ON v.cod_venc = ev.cod_venc WHERE ev.matr = e.matr), 0)
  - COALESCE((SELECT SUM(d.valor) FROM emp_desc ed JOIN desconto d ON d.cod_desc = ed.cod_desc WHERE ed.matr = e.matr), 0)) AS "Salario Liquido"
FROM empregado e
JOIN departamento d ON d.cod_dep = e.lotacao
ORDER BY "Salario Liquido" DESC;

-- beecrowd 2990 - CPF dos Empregados
-- https://judge.beecrowd.com/pt/problems/view/2990

SELECT e.cpf, e.enome, d.dnome
FROM empregados e
JOIN departamentos d ON d.dnumero = e.dnumero
WHERE NOT EXISTS (SELECT 1 FROM trabalha t WHERE t.cpf_emp = e.cpf)
ORDER BY e.cpf;

-- beecrowd 2739 - Dia de Pagamento
-- https://judge.beecrowd.com/pt/problems/view/2739

SELECT name, EXTRACT(DAY FROM payday)::INT AS day
FROM loan;

-- beecrowd 2625 - Máscara de CPF
-- https://judge.beecrowd.com/pt/problems/view/2625

SELECT SUBSTR(cpf, 1, 3) || '.' || SUBSTR(cpf, 4, 3) || '.' || SUBSTR(cpf, 7, 3) || '-' || SUBSTR(cpf, 10, 2) AS "CPF"
FROM natural_person;

-- beecrowd 2744 - Senhas
-- https://judge.beecrowd.com/pt/problems/view/2744

SELECT id, password, MD5(password) AS "MD5" FROM account;

-- beecrowd 3505 - Controle de Ingredientes
-- https://judge.beecrowd.com/pt/problems/view/3505

SELECT nome, kg
FROM ingrediente
WHERE kg < 10
ORDER BY kg;

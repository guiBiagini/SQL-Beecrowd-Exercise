-- beecrowd 3492 - Ranking turismo CE
-- https://judge.beecrowd.com/pt/problems/view/3492

WITH cidade AS (
  SELECT c.nome_cidade, c.regiao,
         COUNT(DISTINCT p.ponto_id) AS qtd_pontos,
         ROUND(AVG(a.nota), 2) AS media_avaliacoes
  FROM Cidades c
  JOIN PontosTuristicos p ON p.cidade_id = c.cidade_id
  LEFT JOIN Avaliacoes a ON a.ponto_id = p.ponto_id
  GROUP BY c.cidade_id, c.nome_cidade, c.regiao
  HAVING COUNT(DISTINCT p.ponto_id) >= 2
)
SELECT nome_cidade, regiao, qtd_pontos, media_avaliacoes,
       RANK() OVER (PARTITION BY regiao ORDER BY media_avaliacoes DESC) AS ranking_regional
FROM cidade
ORDER BY regiao, ranking_regional;

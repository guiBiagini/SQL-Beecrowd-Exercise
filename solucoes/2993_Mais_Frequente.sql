-- beecrowd 2993 - Mais Frequente
-- https://judge.beecrowd.com/pt/problems/view/2993

SELECT amount AS most_frequent_value
FROM value_table
GROUP BY amount
ORDER BY COUNT(*) DESC
LIMIT 1;

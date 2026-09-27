-- beecrowd 2995 - A Mensagem do Sensor
-- https://judge.beecrowd.com/pt/problems/view/2995

SELECT temperature, COUNT(*) AS number_of_records
FROM records
GROUP BY mark, temperature
ORDER BY mark;

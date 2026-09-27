-- beecrowd 2996 - Entrega de Pacotes
-- https://judge.beecrowd.com/pt/problems/view/2996

SELECT p.year, s.name AS sender, r.name AS receiver
FROM packages p
JOIN users s ON s.id = p.id_user_sender
JOIN users r ON r.id = p.id_user_receiver
WHERE (p.color = 'blue' OR p.year = 2015)
  AND s.address <> 'Taiwan'
  AND r.address <> 'Taiwan'
ORDER BY p.year DESC, p.id_package DESC;

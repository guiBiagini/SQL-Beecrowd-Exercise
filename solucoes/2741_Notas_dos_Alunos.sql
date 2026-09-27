-- beecrowd 2741 - Notas dos Alunos
-- https://judge.beecrowd.com/pt/problems/view/2741

SELECT 'Approved: ' || name AS name, grade
FROM students
WHERE grade >= 7
ORDER BY grade DESC;

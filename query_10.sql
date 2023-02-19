SELECT s.fullname AS student, t.fullname AS teacher, d.name AS discipline
FROM grades g 
JOIN students s ON s.id = g.student_id
JOIN disciplines d  ON d.id = g.discipline_id
JOIN teachers t  ON t.id = d.teacher_id 
WHERE s.id  = 42 AND t.id = 1
GROUP BY d.name ;
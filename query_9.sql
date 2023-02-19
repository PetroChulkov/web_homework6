SELECT s.fullname, d.name
FROM grades g 
JOIN students s ON s.id = g.student_id
JOIN disciplines d  ON d.id = g.discipline_id
WHERE s.id  = 42
GROUP BY d.name ;
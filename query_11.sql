SELECT s.fullname, t.fullname, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g 
JOIN students s ON s.id = g.student_id
JOIN teachers t  ON t.id = d.teacher_id  
JOIN disciplines d  ON d.id = g.discipline_id 
WHERE s.id  = 1 AND t.id = 1
GROUP BY t.id ;
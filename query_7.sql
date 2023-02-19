SELECT d.name, gr.name, s.fullname, g2.grade 
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN [groups] gr ON gr.id = s.group_id 
JOIN disciplines d  ON d.id = g.discipline_id 
JOIN grades g2  ON g2.id = g.grade 
WHERE d.id = 2 AND gr.id = 1
GROUP BY s.fullname ;
SELECT t.fullname, d.name  
FROM grades g 
JOIN teachers t  ON t.id = d.teacher_id  
JOIN disciplines d  ON d.id = g.discipline_id 
WHERE t.id = 2
GROUP BY d.id;
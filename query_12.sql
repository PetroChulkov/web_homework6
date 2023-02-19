SELECT s.fullname AS Student, gr.name AS Group_Num, d.name AS Discipline, g.grade AS Grade, MAX(g2.date_of) as Last_lesson
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN [groups] gr ON gr.id = s.group_id 
JOIN disciplines d  ON d.id = g.discipline_id 
JOIN grades g2  ON g2.id = g.grade  
WHERE d.id = 1 AND gr.id = 1
GROUP BY s.fullname 
HAVING last_lesson = MAX(g2.date_of)
ORDER BY last_lesson DESC 

;
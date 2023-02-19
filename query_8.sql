SELECT t.fullname, d.name, ROUND(AVG(g.grade), 2) AS average_grade 
FROM grades g 
JOIN teachers t  ON t.id = d.teacher_id  
JOIN disciplines d  ON d.id = g.discipline_id
WHERE t.id = 1
GROUP BY d.name  
ORDER BY average_grade DESC

;


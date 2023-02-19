SELECT gr.name, s.fullname
FROM grades g 
JOIN students s ON s.id = g.student_id
JOIN [groups] gr ON gr.id = s.group_id 
WHERE gr.id = 3
GROUP BY s.id;
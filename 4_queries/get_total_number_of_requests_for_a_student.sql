SELECT count(assistance_requests.*) as total_assistances, students.name as name
FROM assistance_requests
JOIN students ON students.id = student_id
WHERE name LIKE 'Elliot Dickinson'
GROUP BY name;
USE kaylan_university_schema;

-- Courses listed by average grade in descending order

SELECT c.course_name, AVG(g.grade_number)
AS AVGgrade
FROM grades g
JOIN professors p
ON p.prof_grade_id = g.grade_id
JOIN courses c
ON p.prof_course_id = c.course_id
GROUP BY c.course_name
ORDER BY AVGgrade DESC;





-- Selects all the grades for a course
SELECT DISTINCT c.course_name, g.grade_number
FROM courses c, grades g, professors p
WHERE p.prof_grade_id = g.grade_id
AND c.course_name = "English";
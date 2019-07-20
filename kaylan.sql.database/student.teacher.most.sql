
USE kaylan_university_schema;

-- List of what teacher has student is in their classes the most(query5)

SELECT p.prof_name, s.stu_name, COUNT(p.prof_name) AS HowOftenStudentinTeacherClass
FROM professors p, students s
WHERE p.prof_student_id = s.stu_id
GROUP BY p.prof_name, s.stu_name
ORDER BY COUNT(p.prof_name) DESC Limit 1;




-- Professor name with total students in all their courses

SELECT p.prof_name, COUNT(s.stu_id)
FROM professors p
JOIN students s
ON p.prof_student_id = s.stu_id
JOIN courses c 
ON p.prof_course_id = c.course_id
GROUP BY prof_name;







USE kaylan_university_schema;



-- List of students in each course code reduced ***
SELECT c.course_name AS Course, s.stu_name AS Student
FROM professors p, courses c, students s
WHERE p.prof_course_id = c.course_id
AND p.prof_student_id = s.stu_id
GROUP BY Course, Student
ORDER BY Course;




-- List of students in each course.

SELECT  DISTINCT c.course_name, s.stu_name
FROM courses c, students s, professors p
WHERE p.prof_student_id = s.stu_id
AND c.course_name = "English"
UNION
SELECT  DISTINCT c.course_name, s.stu_name
FROM courses c, students s, professors p
WHERE p.prof_student_id = s.stu_id
AND c.course_name = "Math"
UNION
SELECT  DISTINCT c.course_name, s.stu_name
FROM courses c, students s, professors p
WHERE p.prof_student_id = s.stu_id
AND c.course_name = "React"
UNION
SELECT  DISTINCT c.course_name, s.stu_name
FROM courses c, students s, professors p
WHERE p.prof_student_id = s.stu_id
AND c.course_name = "Science"
UNION
SELECT  DISTINCT c.course_name, s.stu_name
FROM courses c, students s, professors p
WHERE p.prof_student_id = s.stu_id
AND c.course_name = "Health"
UNION
SELECT  DISTINCT c.course_name, s.stu_name
FROM courses c, students s, professors p
WHERE p.prof_student_id = s.stu_id
AND c.course_name = "Geometry"
UNION
SELECT  DISTINCT c.course_name, s.stu_name
FROM courses c, students s, professors p
WHERE p.prof_student_id = s.stu_id
AND c.course_name = "History"
UNION
SELECT  DISTINCT c.course_name, s.stu_name
FROM courses c, students s, professors p
WHERE p.prof_student_id = s.stu_id
AND c.course_name = "Computers"
UNION
SELECT  DISTINCT c.course_name, s.stu_name
FROM courses c, students s, professors p
WHERE p.prof_student_id = s.stu_id
AND c.course_name = "Drama"
UNION
SELECT  DISTINCT c.course_name, s.stu_name
FROM courses c, students s, professors p
WHERE p.prof_student_id = s.stu_id
AND c.course_name = "Art";



-- This is a student schedule

SELECT c.course_name, s.stu_name
FROM students s
JOIN professors p
ON p.prof_student_id = s.stu_id
JOIN courses c
ON p.prof_course_id = c.course_id
WHERE s.stu_name = "Eve";




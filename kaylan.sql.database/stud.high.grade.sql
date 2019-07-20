USE kaylan_university_schema;

-- Every student's highest grade.

SELECT 
(SELECT
MAX(g.grade_number) 
FROM grades g
JOIN professors p
ON p.prof_grade_id = g.grade_id
JOIN students s
ON p.prof_student_id = s.stu_id
WHERE s.stu_name = "Nin") AS NinHighGrade,
(SELECT
MAX(g.grade_number) 
FROM grades g
JOIN professors p
ON p.prof_grade_id = g.grade_id
JOIN students s
ON p.prof_student_id = s.stu_id
WHERE s.stu_name = "Sam") AS SamHighGrade,
(SELECT
MAX(g.grade_number) 
FROM grades g
JOIN professors p
ON p.prof_grade_id = g.grade_id
JOIN students s
ON p.prof_student_id = s.stu_id
WHERE s.stu_name = "Eve") AS EveHighGrade,
(SELECT
MAX(g.grade_number) 
FROM grades g
JOIN professors p
ON p.prof_grade_id = g.grade_id
JOIN students s
ON p.prof_student_id = s.stu_id
WHERE s.stu_name = "Bob") AS BobHighGrade,
(SELECT
MAX(g.grade_number) 
FROM grades g
JOIN professors p
ON p.prof_grade_id = g.grade_id
JOIN students s
ON p.prof_student_id = s.stu_id
WHERE s.stu_name = "George") AS GeorgeHighGrade,
(SELECT
MAX(g.grade_number) 
FROM grades g
JOIN professors p
ON p.prof_grade_id = g.grade_id
JOIN students s
ON p.prof_student_id = s.stu_id
WHERE s.stu_name = "Raulf") AS RaulfHighGrade,
(SELECT
MAX(g.grade_number) 
FROM grades g
JOIN professors p
ON p.prof_grade_id = g.grade_id
JOIN students s
ON p.prof_student_id = s.stu_id
WHERE s.stu_name = "Drue") AS DrueHighGrade,
(SELECT
MAX(g.grade_number) 
FROM grades g
JOIN professors p
ON p.prof_grade_id = g.grade_id
JOIN students s
ON p.prof_student_id = s.stu_id
WHERE s.stu_name = "Joe") AS JoeHighGrade,
(SELECT
MAX(g.grade_number) 
FROM grades g
JOIN professors p
ON p.prof_grade_id = g.grade_id
JOIN students s
ON p.prof_student_id = s.stu_id
WHERE s.stu_name = "Pam") AS PamHighGrade,
(SELECT
MAX(g.grade_number) 
FROM grades g
JOIN professors p
ON p.prof_grade_id = g.grade_id
JOIN students s
ON p.prof_student_id = s.stu_id
WHERE s.stu_name = "Runt") AS RuntHighGrade;




-- Calls all the grades for one student

SELECT s.stu_name, g.grade_number
FROM professors p
JOIN students s
ON p.prof_student_id = s.stu_id
JOIN grades g
ON p.prof_grade_id = g.grade_id
WHERE s.stu_name = "Runt";
USE kaylan_university_schema;

-- Average grade given by each professor

SELECT
(SELECT AVG(grade_number)
FROM grades g
INNER JOIN professors p
WHERE p.prof_grade_id = g.grade_id
AND prof_name = "Mr. Jones") AS MrJonesAvgGrade,
(SELECT AVG(grade_number)
FROM grades g
INNER JOIN professors p
WHERE p.prof_grade_id = g.grade_id
AND prof_name = "Mrs. Knotts") AS MrsKnottsAvgGrade,
(SELECT AVG(grade_number)
FROM grades g
INNER JOIN professors p
WHERE p.prof_grade_id = g.grade_id
AND prof_name = "Mr. Otter") AS MrOtterAvgGrade,
(SELECT AVG(grade_number)
FROM grades g
INNER JOIN professors p
WHERE p.prof_grade_id = g.grade_id
AND prof_name = "Mrs. Swenson") AS MrsSwensonAvgGrade,
(SELECT AVG(grade_number)
FROM grades g
INNER JOIN professors p
WHERE p.prof_grade_id = g.grade_id
AND prof_name = "Mr. Window") AS MrWindowAvgGrade;



-- Average grade for one professor

SELECT AVG(grade_number)
AS MrWindowAveGrade
FROM grades g
INNER JOIN professors p
WHERE p.prof_grade_id = g.grade_id
AND prof_name = "Mr. Window";

SELECT name, registration_number
FROM students
WHERE country_id between 1 and 4;

SELECT name, employment_number
FROM teachers 
WHERE employment_number IS NOT NULL;

SELECT name
FROM courses
WHERE name LIKE '%computer%';

SELECT count(*)
FROM students 
WHERE country_id=3
GROUP BY country_id;

SELECT max(grade) 
FROM student_courses WHERE student_id=3 
group by student_id;

SELECT name FROM courses JOIN students ON courses.course_id = students.student_id
WHERE student_id =3;

SELECT * FROM cources JOIN teachers ON  courses.teacher_id= teachers.id
WHERE teacher_id=3;



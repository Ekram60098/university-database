CREATE TABLE countries (
  id INT AUTO_INCREMENT PRIMARY KEY, 
  name TEXT VARCHAR(30) NOT NULL
);

CREATE TABLE students(
id INT AUTO_INCREMENT PRIMARY KEY,
registration_number VARCHAR(10),
name TEXT VARCHAR(30),
country_id INT NOT NULL
);

CREATE TABLE teachers(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
employment_number VARCHAR(10) NOT NULL,
name VARCHAR(30) NOT NULL
);

CREATE TABLE courses(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
course_number TINYINT(5) NOT NULL,
title VARCHAR(30) NOT NULL,
description TEXT NOT NULL,
credit_hours TINYINT NOT NULL,
teacher_id INT UNSIGNED NOT NULL 
);
        
CREATE TABLE student_courses(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
student_id INT UNSIGNED NOT NULL,
course_id INT UNSIGNED NOT NULL,
year SMALLINT NOT NULL,
semester TINYINT NOT NULL,
grade TINYINT
);

insert INTO countries (name)
  VALUES 
        ('syria'),
        ('jordan'),
        ('iraq');

INSERT INTO students(registration_number, name, country_id)
  VALUES 
        (1, 'Ekram',1),
        (2, 'Maram',1),
        (3, 'Hajar',3),
        (4, 'Iman',1),
        (5, 'Farah',2);

INSERT INTO teachers (employment_number, name)
VALUES 
      (1,'Bashar AlQaumi'),
      (2,'Tareq AlHasan'),
      (NULL,'Ahmad AlJanaideh');

select * from countries;
select * from students;
select * from teachers;

INSERT INTO courses (course_number, title, description, credit_hours, teacher_id)
VALUES
(1, 'Intro to circuits', 'electrical circuit analysis', 3, 3),
(2, 'intro to computer science','Basis of computer science',3, 1),
(3, 'Intro to Electrical Machines', 'Basics of Electrical machines analysis',3, 2);
SELECT * FROM courses;

INSERT INTO student_courses( student_id, course_id, year, semester, grade)
VALUES
(1, 1, 2021 'Fall', 99),
(1, 2, 2021, 'Fall', 69),
(1, 3, 2021, 'Fall' ,98),
(2, 1, 2021 'Fall',78),
(2, 2, 2021, 'Fall',67),
(2, 3, 2021, 'Fall',86),
(3, 1, 2021 'Fall',98),
(3, 2, 2021, 'Fall',86),
(3, 3, 2021, 'Fall',69),
(4, 1, 2021 'Fall', 57),
(4, 2, 2021, 'Fall',78),
(4, 3, 2021, 'Fall',78);


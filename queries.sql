----Queries for school management database
----1. Extract the students first names from students table
SELECT first_name FROM students
---2. List all students
SELECT * FROM students;
---3. list all students who lives in Newark
SELECT first_name, last_name
FROM students
WHERE city = 'Newark';
---4. list all teachers who teach science
SELECT first_name, last_name
FROM teachers
WHERE subject = 'science';
---5. list all courses
SELECT course_name FROM courses;
---6. list all courses taught by specific teacher
SELECT course_name FROM courses WHERE teacher_id = 2;

---JOIN queries
---7. list students with their courses and grades
SELECT s.first_name, s.last_name, c.course_name, e.grade
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id;
---8. list teachers with the courses they teach
SELECT t.first_name, t.last_name, c.course_name
FROM teachers t
JOIN courses c ON t.teacher_id = c.teacher_id;
---9. list students with their teacher
SELECT s.first_name AS student, t.first_name AS teacher, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
JOIN teachers t ON c.teacher_id = t.teacher_id;

----Aggregate queries
---10. count how many students are enrolled in each course
SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;
---11. number of students per city
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city;
---12. number of students per course
SELECT course_name, COUNT(*) AS total_students
FROM courses
GROUP BY course_name;
---13. teachers who teach more than one course
SELECT t.first_name, t.last_name, COUNT(c.course_id) AS num_courses
FROM teachers t
JOIN courses c ON t.teacher_id = c.teacher_id
GROUP BY t.teacher_id
HAVING COUNT(c.course_id) > 1;
---14. find number of departments
SELECT department_name, COUNT(*) AS num_departments
FROM departments d
GROUP BY department_name;
---15. find number of teachers by their last name
SELECT t.last_name, COUNT(*) AS total_teachers
FROM teachers t
GROUP BY t.last_name;

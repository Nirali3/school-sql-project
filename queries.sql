----Queries for school management database
----1. Extract the students first names from students table
SELECT first_names FROM students
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
---7. list students with their courses and grades
SELECT s.first_name, s.last_name, c.course_name, e.grade
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id;

---- SChool Management Database Schema

---- students table
CREATE TABLE students(
  student_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  city VARCHAR(50),
  grade_level INT
  );

--- teachers table
CREATE TABLE teachers(
  teacher_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  subject VARCHAR(50)
  );

--- courses table
CREATE TABLE courses(
  course_id INT PRIMARY KEY,
  course_name VARCHAR(50),
  tearcher_id INT,
  FOREIGN KEY(teacher_id) REFERENCES teachers(teacher_id)
  );

--- departments table
CREATE TABLE departments(
  department_id INT PRIMARY KEY,
  department_name VARCHAR(50),
  teacher_id INT,
  FOREIGN KEY (teacher_id) REFERENCES teachers (teacher_id) REFERENCES courses (teacher_id)
  );

--- enrollments table
CREATE TABLE enrollments(
  enrollment_id INT PRIMARY KEY,
  student_id INT,
  course_id INT,
  grade CHAR(2),
  FOREIGN KEY (student_id) REFERENCES students (student_id),
  FOREIGN KEY (course_id) REFERENCES courses (course_id)
  );

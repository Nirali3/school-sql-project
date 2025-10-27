--- students table
NO FOREIGN KEY

--- teachers table
NO FOREIGN KEY

--- courses table
FOREIGN KEY(teacher_id)

--- departments table
FOREIGN KEY(teacher_id)

--- enrollments table
FOREIGN KEY(student_id)
FOREIGN KEY(course_id)

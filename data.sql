--- School Management Database Sample Data

--- Students table
INSERT INTO students VALUES
(1, 'Tom', 'Smith', 'Newark', 10),
(2, 'Bob', 'Johnson', 'Chicago', 11),
(3, 'Joe', 'Dims', 'New York', 12);

-- Teachers
INSERT INTO teachers VALUES
(1, 'Nancy', 'Adams', 'Math'),
(2, 'Laura', 'Alexis', 'Science'),
(3, 'David', 'Mark', 'English');

-- Courses
INSERT INTO courses VALUES
(101, 'Algebra I', 1),
(102, 'Biology', 2),
(103, 'Literature', 3),
(104, 'Geometry', 1),
(201, 'Physics', 2),
(202, 'Algebra II', 1);

-- Departments
INSERT INTO departments VALUES
(1000, 'Math', 1),
(1001, 'Science', 2),
(1002, 'English', 3);

-- Enrollments
INSERT INTO enrollments VALUES
(1, 1, 101, 'B'),
(2, 2, 102, 'C'),
(3, 2, 103, 'A'),
(4, 3, 103, 'A'),
(5, 1, 202, 'B'),
(6, 1, 201, 'C'),
(7, 2, 104, 'A'),
(8, 2, 201, 'B'),
(9, 3, 104, 'A'),
(10, 3, 201, 'A');

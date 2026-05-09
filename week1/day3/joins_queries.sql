-- 1. Display all students and the courses they are enrolled in
SELECT s.student_name, c.course_name
FROM students s
LEFT JOIN enrollments e
ON s.student_id = e.student_id
LEFT JOIN courses c
ON e.course_id = c.course_id;

-- 2. Find all courses that currently have no students enrolled
SELECT c.course_name
FROM courses c
LEFT JOIN enrollments e
ON c.course_id = e.course_id
WHERE e.course_id IS NULL;

-- 3. Display all instructors and the courses they teach
SELECT i.instructor_name, c.course_name
FROM instructors i
LEFT JOIN courses c
ON i.instructor_id = c.instructor_id;

-- 4. Find all courses that do not have an instructor assigned
SELECT *
FROM courses
WHERE instructor_id IS NULL;

-- 5. Display all students and enrollment information using RIGHT JOIN
SELECT s.student_name, e.course_id, e.enrollment_date
FROM students s
RIGHT JOIN enrollments e
ON s.student_id = e.student_id;

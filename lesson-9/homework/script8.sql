CREATE TABLE Students (
    student_id INT,
    student_name VARCHAR(50)
);

CREATE TABLE Enrollments (
    enrollment_id INT,
    student_id INT,
    course_id INT
);
SELECT 
    s.student_name AS Студент,
    e.course_id AS Идентификатор_курса
FROM Enrollments e
INNER JOIN Students s ON e.student_id = s.student_id;

CREATE TABLE Students (
    student_id INT,
    student_name VARCHAR(50)
);

CREATE TABLE Courses (
    course_id INT,
    course_name VARCHAR(50)
);
SELECT 
    s.student_name AS Студент,
    c.course_name AS Курс
FROM Students s
CROSS JOIN Courses c;

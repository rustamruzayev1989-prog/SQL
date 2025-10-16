SELECT s.name AS StudentName,
       c.name AS CourseName
FROM Enrollments e
JOIN Students s ON e.student_id = s.id
JOIN Courses c ON e.course_id = c.id
WHERE c.name = 'Math 101';

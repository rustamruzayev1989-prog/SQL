SELECT s.id AS StudentID,
       s.name AS StudentName
FROM Students s
WHERE NOT EXISTS (
    SELECT 1
    FROM Enrollments e
    JOIN Courses c ON e.course_id = c.id
    WHERE e.student_id = s.id
      AND c.name = 'Math 101'
);

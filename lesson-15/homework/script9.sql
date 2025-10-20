SELECT s.student_id, s.name, g.course_id, g.grade
FROM grades g
JOIN students s
  ON g.student_id = s.student_id
JOIN (
    SELECT course_id, MAX(grade) AS max_grade
    FROM grades
    GROUP BY course_id
) mg
  ON g.course_id = mg.course_id AND g.grade = mg.max_grade;

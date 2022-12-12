SELECT SUM(duration) as total_duration F
ROM assignment_submissions 
FULL OUTER JOIN students 
ON students.id =
 assignment_submissions.student_id 
WHERE students.name = 'Ibrahim Schimmel';
SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration, AVG(assignments.duration) as average_estimated_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_submissions.assignment_id
WHERE students.end_date IS null
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY AVG(assignment_submissions.duration);
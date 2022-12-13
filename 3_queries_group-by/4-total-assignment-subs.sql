SELECT cohorts.name as cohort, COUNT(assignment_submissions.id) as total_submissions
FROM students
JOIN cohorts on cohorts.id = students.cohort_id
JOIN assignment_submissions on students.id = assignment_submissions.student_id
GROUP BY cohorts.name
ORDER BY COUNT(assignment_submissions.id) DESC;
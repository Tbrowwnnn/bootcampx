SELECT SUM(duration) as total_duration 
FROM assignment_submissions 
FULL OUTER JOIN students 
ON students.id =
 assignment_submissions.student_id 
FULL OUTER JOIN cohorts 
ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'FEB12';
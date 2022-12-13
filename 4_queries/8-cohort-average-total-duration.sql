SELECT AVG(sum_table) as average_total_duration
FROM (SELECT cohorts.name, SUM(assistance_requests.completed_at - assistance_requests.started_at) as sum_table
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY sum_table) as sum_duration;

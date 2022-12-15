const { process_params } = require('express/lib/router');
const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});


pool.query(`
SELECT teachers.name as teachers, cohorts.name as cohorts
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name LIKE '%${process.argv[2]}%'
GROUP BY teachers.name, cohorts.name;
`)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohorts}: ${row.teachers}`);
  })
})

.catch(err => console.error('query error', err.stack));
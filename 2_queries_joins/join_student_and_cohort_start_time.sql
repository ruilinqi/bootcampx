SELECT students.name, students.start_date as student_start_time, cohorts.name, cohorts.start_date as cohort_start_time
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date
ORDER BY cohort_start_time
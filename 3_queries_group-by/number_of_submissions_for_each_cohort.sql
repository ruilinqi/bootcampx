SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_assignments
FROM assignment_submissions
JOIN students ON students.cohort_id = cohort_id AND students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_assignments DESC;

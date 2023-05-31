-- use uni;
-- SELECT students.name, courses.title from students
-- INNER JOIN students2courses
-- on students.id = students2courses.student_id
-- INNER JOIN courses
-- on courses.id = students2courses.course_id

-- 
-- select teachers.name, competencies.title from teachers
-- INNER JOIN teachers2competencies
-- on teachers.id = teachers2competencies.teacher_id
-- INNER JOIN competencies
-- on competencies.id = teachers2competencies.competencies_id

-- select teachers.name from teachers
-- left JOIN teachers2competencies
-- on teachers.id = teachers2competencies.teacher_id
-- WHERE teachers2competencies.teacher_id is NULL

-- SELECT students.name FROM students
-- left JOIN students2courses
-- on students2courses.student_id = students.id
-- where students2courses.student_id is null

-- SELECT courses.title FROM courses
-- left JOIN students2courses
-- on students2courses.course_id = courses.id
-- where students2courses.student_id is null

-- SELECT competencies.title from competencies
-- LEFT JOIN teachers2competencies
-- on teachers2competencies.competencies_id = competencies.id
-- WHERE teachers2competencies.competencies_id is null

-- 
-- SELECT courses.title, students.name 
-- from courses
-- left JOIN students
-- on courses.headman_id = students.id

-- SELECT students.name , count(courses.id) as 'courses quantity'
-- from courses
-- left JOIN students
-- on courses.headman_id = students.id
-- GROUP BY students.name

-- SELECT courses.title, COUNT(students2courses.student_id)
-- from courses
-- LEFT JOIN students2courses
-- on courses.id = students2courses.course_id
-- GROUP BY courses.title

-- SELECT students.name, COUNT(students2courses.student_id)
-- from students
-- LEFT JOIN students2courses
-- on students.id = students2courses.student_id
-- GROUP BY students.name

-- SELECT students.name as 'student', students_copy.name as 'headman', teachers.name as 'teacher' from students
-- INNER JOIN students2courses
-- on students.id = students2courses.student_id
-- INNER JOIN courses
-- ON courses.id = students2courses.course_id
-- INNER JOIN teachers
-- on courses.teacher_id = teachers.id
-- INNER JOIN students students_copy
-- on students_copy.id = courses.headman_id
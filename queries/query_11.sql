--Середній бал, який певний викладач ставить певному студентові.

SELECT AVG(grades.grade) as avg_grade
FROM grades
JOIN students ON students.id = grades.student_id
JOIN disciplines ON disciplines.id = grades.discipline_id
JOIN teachers ON teachers.id = disciplines.teacher_id
WHERE teachers.fullname = 'Амалія Власюк' AND students.fullname = 'Устим Височан';

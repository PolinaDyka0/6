--Знайти середній бал, який ставить певний викладач зі своїх предметів.

SELECT teachers.fullname, ROUND(AVG(grades.grade), 2) as avg_grade
FROM teachers
INNER JOIN disciplines ON teachers.id = disciplines.teacher_id
INNER JOIN grades ON disciplines.id = grades.discipline_id
GROUP BY teachers.id
HAVING teachers.fullname = 'Яків Баклан'

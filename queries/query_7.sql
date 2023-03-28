--Знайти оцінки студентів у окремій групі з певного предмета.

SELECT students.fullname, grades.grade
FROM grades
JOIN students ON students.id = grades.student_id
JOIN groups ON students.group_id = groups.id
JOIN disciplines ON grades.discipline_id = disciplines.id 
WHERE groups.name = 'ХП-31' AND disciplines.name = 'Актуарна математика';

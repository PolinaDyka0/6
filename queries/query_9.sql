--Знайти список курсів, які відвідує студент.

SELECT DISTINCT disciplines.name
FROM grades
JOIN students ON grades.student_id = students.id
JOIN disciplines ON grades.discipline_id = disciplines.id
WHERE students.fullname = 'Устим Височан';

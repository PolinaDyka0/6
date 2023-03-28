--Оцінки студентів у певній групі з певного предмета на останньому занятті.
  
SELECT disciplines.name, grades.grade, students.fullname, grades.date_of, groups.name
FROM grades
JOIN students ON students.id = grades.student_id
JOIN groups ON students.group_id = groups.id
JOIN disciplines ON grades.discipline_id = disciplines.id 
WHERE groups.name = 'ХП-31' AND disciplines.name = 'Актуарна математика'
AND grades.date_of = (
    SELECT MAX(date_of)
    FROM grades
    JOIN students ON students.id = grades.student_id
    JOIN groups ON students.group_id = groups.id
    JOIN disciplines ON grades.discipline_id = disciplines.id 
    WHERE groups.name = 'ХП-31' AND disciplines.name = 'Актуарна математика'
)










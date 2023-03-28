--Список курсів, які певному студенту читає певний викладач.


SELECT disciplines.name 
FROM grades 
JOIN students ON grades.student_id = students.id 
JOIN disciplines ON grades.discipline_id = disciplines.id 
JOIN teachers ON disciplines.teacher_id = teachers.id 
WHERE students.fullname = 'Устим Височан' AND teachers.fullname = 'Амалія Власюк'
GROUP BY disciplines.name;


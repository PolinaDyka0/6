--Знайти які курси читає певний викладач.

SELECT disciplines.name AS discipline_name
FROM disciplines
JOIN teachers ON disciplines.teacher_id = teachers.id
WHERE teachers.fullname = 'Яків Баклан';


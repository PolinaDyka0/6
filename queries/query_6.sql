--Знайти список студентів у певній групі.

SELECT students.fullname
FROM students
JOIN groups ON students.group_id = groups.id
WHERE groups.name = 'ХП-31';

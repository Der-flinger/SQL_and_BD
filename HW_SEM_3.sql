-- Написать скрипт, возвращающий список имен (только firstname)
-- пользователей без повторений в алфавитном порядке. [ORDER BY]
SELECT DISTINCT firstname
FROM Users
ORDER BY firstname ;

-- Выведите количество мужчин старше 35 лет [COUNT].
SELECT count(*)
FROM profiles 
WHERE TIMESTAMPDIFF(YEAR, birthday, now()) > 35;

-- Сколько заявок в друзья в каждом статусе? 
-- (таблица friend_requests) [GROUP BY]
SELECT 
	status, 
	count(*) 
FROM friend_requests
GROUP BY status



-- Подсчитать количество групп (сообществ), в которые вступил каждый пользователь.
SELECT firstname, lastname, count(*)
FROM users JOIN users_communities ON id = user_id 
GROUP BY id
ORDER BY count(*) desc;


-- Подсчитать количество пользователей в каждом сообществе.
SELECT communities.name, count(*) FROM users_communities 
JOIN communities ON users_communities.community_id = communities.id
GROUP BY community_id;

-- Пусть задан некоторый пользователь. Из всех пользователей соц. сети найдите человека, 
-- который больше всех общался с выбранным пользователем (написал ему сообщений).
SELECT 
	messages.from_user_id, concat(firstname, ' ', lastname),
	count(*) AS 'message_count' 
FROM messages JOIN users ON from_user_id = users.id
WHERE to_user_id = 1
GROUP BY users.id
ORDER BY message_count DESC
LIMIT 1;
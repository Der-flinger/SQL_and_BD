-- Создайте представление с произвольным SELECT-запросом из прошлых уроков [CREATE VIEW]

CREATE VIEW view1 AS 
	SELECT c.name, count(*) 
	FROM communities c JOIN users_communities uc ON c.id = uc.community_id 
	GROUP BY c.name;
	
-- Выведите данные, используя написанное представление [SELECT]
SELECT * FROM view1;

-- Удалите представление [DROP VIEW]
DROP VIEW view1; 
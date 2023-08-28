-- Создаем таблицу с плейлистами
DROP TABLE IF EXISTS video_playlists;
CREATE TABLE video_playlists (
	id SERIAL,
	name varchar(200) not null,
    user_id BIGINT UNSIGNED NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Создаем таблицу с видео
DROP TABLE IF EXISTS videos;
CREATE TABLE videos (
	id SERIAL,
	name varchar(200) not null,
	created_at DATETIME default NOW(),
	media_id BIGINT unsigned not null,
	playlist_id BIGINT unsigned, 
	
	FOREIGN KEY (playlist_id) REFERENCES video_playlists(id),
	FOREIGN KEY (media_id) REFERENCES media(id)
);


-- Таблица с городами
DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
	id serial,
	name varchar(64) not null
);

alter table profiles add column city_id BIGINT unsigned not null;

ALTER TABLE profiles ADD CONSTRAINT fk_profiles_city_id
    FOREIGN KEY (city_id) REFERENCES cities(id)
    
insert into video_playlists values
('1','favorites','1'),
('2','vibe','1'),
('3','cars','1'),
('4','iron_man','2'),
('5','TOTAL_MUSCLE','2'),
('6','books','3'),
('7','food','3'),
('8','HELLLL','4'),
('9','fairy_tale','10'),
('10','new','10'),

INSERT INTO videos values
('1','video1','2022-10-14 03:52:20','1','5'),
('2','viseo2','2023-09-04 17:08:30','2','4'),
('3','video3','2021-07-10 12:09:03','3','2'),
('4','video4','2020-05-12 24:32:51','4','4'),
('5','video5','2010-09-10 14:36:01','5','4'),
('6','video6','2019-04-15 01:27:31','6','4'),
('7','video7','2020-02-03 04:56:27','7','1'),
('8','video8','2020-04-24 09:30:19','8','1'),
('9','video9','2020-02-07 20:53:55','9','1'),
('10','video10','2020-05-11 03:21:40','10','3'),
('11','video11','2020-12-17 13:03:56','11','3'),
('12','video12','2020-07-17 21:22:38','12','2'); 


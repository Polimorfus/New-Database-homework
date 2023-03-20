
INSERT INTO genre(genre_name) 
	values
		('Jazz'),
	    ('Rap'),
	    ('Rock'),
	    ('Pop'),
	    ('Heavy metal')
;

INSERT INTO singer(singer_name) 
	values 
		('Kanye West'), 
		('50 cent'),
		('Imagine Dragons'),
		('Queen'),
		('Nirvana'),
		('ГРОТ'),
		('Ария'),
		('Miyagi and Эндшпиль')
;
INSERT INTO genre_singer(genre_id, singer_id) 
	VALUES(2,1), (2,2),
		(3,3), (3,4),
		(3,5), (2,6),
		(5,7), (2,8)
;
INSERT INTO album(album_name, year_of_release) 
	values
		('Just A Lil Bit', 2005 ),
		('Watch The Throne', 2011),
		('Origins', 2018),
		('The Platinum Collection', 2000),
		('Bohemian Rhapsody', 2018),
		('Nevermind', 1991),
		('Evolve', 2017),
		('Ледакол Вега', 2017),
		('Химера', 2001),
		('I Got Love', 2016)
;
INSERT INTO singer_album (singer_id, album_id) 
	VALUES(1,1), (2,2),
		(3,3), (4,4),
		(4,5), (5,6),
		(3,7), (6,8),
		(7,9), (8,10)
;

INSERT INTO singer_album (singer_id, album_id) 
	VALUES(9,11)
;

INSERT INTO track(track_name, duration, album_id) 
	values
		('Candy Shop', 209, 2),
		('Disco Inferno', 214, 2),
		('Stronger', 312, 1),
		('Natural', 189, 3),
		('Believer', 217, 7),
		('Thunder', 204, 7),
		('Bohemian Rhapsody', 355, 5),
		('We Will Rock You', 122, 4),
		('The Show Must Go ON', 271, 4),
		('Smells Like Teen Spirit', 288, 6),
		('Come As You Are', 238, 6),
		('Город в море трав', 233, 8),
		('Лиза',231, 8),
		('Баллада о северном племени', 254, 8),
		('Магия возраста', 254, 8),
		('Штиль', 340, 9),
		('Осколок льда', 326, 9),
		('I Got Love', 274, 10)
;
INSERT INTO collection(collection_name, year_of_release) 
	values
		('Сборник1', 2000), 
		('Сборник2', 2005),
		('Сборник3', 2010),
		('Сборник4', 2020),
		('Сборник5', 2021),
		('Сборник6', 2022),
		('Сборник7', 2023),
		('Сборник8', 1980)
;
INSERT INTO track_collection(track_id, collection_id) 
	values(1,3), (2,3), (3,2), (4,4), (5,4), (6,4), (7,1), (8,1), 
		(9,1), (10,1), (11,1), (12,4), (13,4), (14,4), (15,4), (16,2), (17,2),(18,4)
;

INSERT INTO singer(singer_name) 
	values 
		('Вася Обломов');
	
INSERT INTO album(album_name, year_of_release) 
	values
		('Этот прекрасный мир', 2019 );
	
INSERT INTO track(track_name, duration, album_id) 
	values
		('Жизнь налаживается', 283, 11);

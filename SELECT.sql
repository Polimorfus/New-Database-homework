--Количество исполнителей в каждом жанре.
SELECT g.genre_name, count(gs.singer_id) FROM genre g
   JOIN genre_singer gs ON g.id = gs.genre_id
   GROUP BY g.genre_name;
  
--Количество треков, вошедших в альбомы 2019–2020 годов.   
SELECT a.album_name, a.year_of_release, count(t.id) FROM album a
   JOIN track t ON a.id = t.album_id
   WHERE a.year_of_release BETWEEN 2019 and 2020
   GROUP BY a.album_name, a.year_of_release;
  
  --Средняя продолжительность треков по каждому альбому.  
SELECT a.album_name, AVG(t.duration) FROM album a
	JOIN track t ON a.id = t.album_id
	GROUP BY a.album_name;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT s.singer_name FROM singer s
   JOIN singer_album sa ON s.id = sa.singer_id
   JOIN album a ON a.id = sa.album_id
   WHERE a.year_of_release < 2020; 
  
--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).  
SELECT c.collection_name FROM collection c
   JOIN track_collection tc ON c.id = tc.collection_id
   JOIN track t ON t.id = tc.track_id
   JOIN album a ON a.id = t.album_id
   JOIN singer_album sa ON a.id = sa.album_id
   JOIN singer s ON s.id = sa.singer_id
   WHERE s.singer_name LIKE '%%ГРОТ%%';
  
--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT a.album_name FROM album a
	JOIN singer_album sa ON a.id = sa.album_id
	JOIN singer s ON s.id = sa.singer_id
	JOIN genre_singer gs ON gs.singer_id = s.id
	JOIN genre g ON g.id = gs.genre_id
	GROUP BY s.singer_name, a.album_name
    HAVING count(gs.genre_id) > 1;
   
--Наименования треков, которые не входят в сборники.
SELECT t.track_name FROM track t
	LEFT JOIN  track_collection tc ON t.id = tc.track_id
	WHERE tc.track_id IS null;

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT s.singer_name FROM singer s
	JOIN singer_album sa ON s.id = sa.singer_id
	JOIN album a ON a.id = sa.album_id
	JOIN track t ON t.album_id = a.id
	WHERE duration = (SELECT MIN(duration) FROM track);

--Названия альбомов, содержащих наименьшее количество треков.
SELECT a.album_name , count(t.id) FROM album a
    JOIN track t ON a.id = t.album_id
    GROUP BY a.album_name 
    HAVING count(t.id) in (
    	SELECT count(t.id) FROM album a
    	JOIN track t ON a.id = t.album_id
        GROUP BY a.album_name
        ORDER BY count(t.id)
        LIMIT 1);

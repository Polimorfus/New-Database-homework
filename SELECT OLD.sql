SELECT album_name, year_of_release FROM album    
	WHERE year_of_release = 2018;

SELECT track_name, duration FROM track    
	ORDER BY duration DESC
	LIMIT 1;
	
SELECT track_name FROM track 
	WHERE duration >= 210;
	
SELECT collection_name FROM collection 
	WHERE year_of_release BETWEEN 2000 and 2018;
	
SELECT singer_name FROM singer
	WHERE singer_name NOT LIKE '%% %%';
	
SELECT track_name FROM track
	WHERE track_name LIKE '%%My%%';

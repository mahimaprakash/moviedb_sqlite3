-- List the titles of the movies directed by Tiwari

SELECT title 
FROM movie
JOIN directsmovie ON movie.id = directsmovie.movid
JOIN director ON directsmovie.dirid = director.id
WHERE director.lname LIKE "%tiwari%";
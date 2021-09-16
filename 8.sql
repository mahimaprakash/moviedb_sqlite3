-- List all the movies in which Christian Bale and Christopher Nolan worked together

SELECT title AS Movie

FROM 
	movie
	JOIN casts ON movie.id = casts.movid
	JOIN actor ON casts.actid = actor.id 

WHERE actor.fname = "Christian" AND actor.lname = "Bale"

INTERSECT

SELECT title AS Movie

FROM 
	movie
	JOIN directsmovie ON movie.id = directsmovie.movid
	JOIN director ON directsmovie.dirid = director.id 

WHERE director.fname = "Christopher" AND director.lname = "Nolan";
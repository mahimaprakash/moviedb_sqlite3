-- List all the movies starring actor with name Chris

SELECT 
	title
FROM 
	movie
JOIN casts ON movie.id = casts.movid
JOIN actor ON casts.actid = actor.id 

WHERE 
	fname  LIKE "%Chris%";





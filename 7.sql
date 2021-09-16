-- List the name of the actors who played in a supporting role

SELECT 
	fname AS FirstName,
	lname AS LastName

FROM 
	actor
	JOIN casts ON actor.id = casts.actid

WHERE	
	casts.role = "%Supporting%";
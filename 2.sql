-- List the names of all distinct actors in the movie "The Perks of Being A Wallflower"

SELECT 
	fname AS FirstName, 
	lname AS LastName
FROM
	actor
Join casts on actor.id = casts.actid
join movie on casts.movid = movie.id 

where movie.title = "The Perks of Being A Wallflower";
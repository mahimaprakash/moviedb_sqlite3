-- List all the movies directed by Christian Bale

select title 
from movie
join directsmovie on movie.id = directsmovie.movid
join director on directsmovie.dirid = director.id
where 
	director.fname = "Christopher":

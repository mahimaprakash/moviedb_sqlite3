--List all directors who directed 1 or more movies, in descending order of the number of movies they directed

SELECT DISTINCT
	a.fname AS FirstName,
	a.lname AS LastName,
	count(b.movid) AS COUNT

FROM 
	director a
	JOIN directsmovie b ON b.dirid = a.id 
GROUP BY a.fname
HAVING count(b.movid) >= 1
ORDER BY count(b.movid) DESC;
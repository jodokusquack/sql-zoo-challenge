/* 01 */
SELECT id, title
 FROM movie
 WHERE yr=1962;
 
/* 02 */
SELECT yr FROM movie
  WHERE title = 'Citizen Kane';
  
/* 03 */
SELECT id, title, yr FROM movie
  WHERE title LIKE '%Star Trek%'
  ORDER BY yr;
  
/* 04 */
SELECT id FROM actor
  WHERE name = 'Glenn Close';
  
/* 05 */
SELECT id FROM movie
  WHERE title = 'Casablanca';
  
/* 06 */
SELECT name FROM actor
  JOIN casting ON actor.id = casting.actorid
  WHERE casting.movieid = 11768;
  
/* 07 */
SELECT name FROM actor
  JOIN casting ON actor.id = casting.actorid
  WHERE casting.movieid = (SELECT id FROM movie WHERE title = 'Alien');
  
/* 08 */
SELECT title FROM movie
  JOIN casting ON casting.movieid = movie.id
  WHERE actorid = (SELECT id FROM actor WHERE name = 'Harrison Ford');
  
/* 09 */
SELECT title FROM movie
  JOIN casting ON movie.id = casting.movieid
  WHERE actorid = (SELECT id FROM actor WHERE name = 'Harrison Ford')
    AND
      casting.ord != 1;
      
/* 10 */
SELECT title, name FROM movie
  JOIN casting ON movie.id = casting.movieid
  JOIN actor ON actor.id = casting.actorid
  WHERE yr = 1962 AND casting.ord = 1;
  
/* 11 */
SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 2;

/* 12 */
SELECT DISTINCT title, name FROM casting x
  JOIN movie ON movie.id = x.movieid
  JOIN actor ON actor.id = x.actorid
WHERE 'Julie Andrews' IN (SELECT name FROM actor JOIN casting y ON y.actorid = actor.id WHERE x.movieid = y.movieid) AND x.ord = 1;

/* 13 */
SELECT name FROM actor
JOIN casting ON casting.actorid = actor.id
WHERE casting.ord = 1
GROUP BY casting.actorid
HAVING COUNT(casting.actorid) >=15
ORDER BY name;

/* 14 */
SELECT title, COUNT(DISTINCT casting.actorid) FROM movie
JOIN casting ON casting.movieid = movie.id
WHERE yr = 1978
GROUP BY casting.movieid
ORDER BY COUNT(DISTINCT casting.actorid) DESC, title;

/* 15 */
/* Could't do it :( */

/* How many movies are there that contains 'Saga' in the description and where the title starts with either 'A' or ends with 'R'? */
SELECT COUNT(*) AS no_of_movies
FROM greencycles.public.film
WHERE description LIKE '%Saga%' AND (title LIKE 'A%' OR title LIKE '%R')
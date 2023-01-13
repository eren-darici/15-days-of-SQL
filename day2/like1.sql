/* How many movies are there that contain the "Documentary" in the description? */
SELECT COUNT(*)
FROM greencycles.public.film
WHERE description LIKE '%Documentary%';
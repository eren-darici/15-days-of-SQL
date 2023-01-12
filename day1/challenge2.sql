/* What is the latest rental date? */
SELECT rental_date
FROM greencycles.public.rental
ORDER BY rental_date DESC
LIMIT 1;
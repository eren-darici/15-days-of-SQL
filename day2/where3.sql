/* The inventory manager asks you how many rentals have not been returned yet (so return date must be null) */
SELECT COUNT(*)
FROM greencycles.public.rental
WHERE return_date IS NULL;
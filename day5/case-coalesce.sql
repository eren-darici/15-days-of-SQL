SELECT rental_date,
    COALESCE(CAST(return_date AS VARCHAR), 'not returned yet') AS return_date
FROM greencycles.public.rental
ORDER BY return_date DESC;
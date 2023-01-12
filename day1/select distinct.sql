/* List unique prices ordered from high to low */
SELECT DISTINCT amount
FROM greencycles.public.payment
ORDER BY amount DESC;
/* A manager wants to find out which of the two employees is responsible for more payments.
   Which of the two is responsible for a higher overall payment amount?
   How do these amount change if we don't consider amounts that equal to 0?
*/
SELECT staff_id, SUM(amount), COUNT(*)
FROM greencycles.public.payment
GROUP BY staff_id
ORDER BY SUM(amount) DESC
LIMIT 1;

SELECT staff_id, SUM(amount), COUNT(*)
FROM greencycles.public.payment
WHERE amount != 0
GROUP BY staff_id
ORDER BY SUM(amount) DESC
LIMIT 1;
/* You need to create a list for the support team of all rental durations of customer with customer_id 35.
   Also you need to find out for the support team which customer has the longest average rental duration.
*/

SELECT customer_id, return_date - rental_date AS rental_duration
FROM greencycles.public.rental
WHERE customer_id = 35;

SELECT customer_id, AVG(return_date - rental.rental_date) AS rental_duration
FROM greencycles.public.rental
GROUP BY customer_id
ORDER BY rental_duration DESC
LIMIT 1;
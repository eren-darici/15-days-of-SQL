/* What's the month with the highest total payment amount?
   What's the day of week with the highest total payment amount?
   What's the highest amount that one customer has spent in a week?
*/

SELECT EXTRACT(MONTH FROM payment_date) AS highest_month, SUM(amount) AS total_amount
FROM greencycles.public.payment
GROUP BY highest_month
ORDER BY SUM(amount) DESC
LIMIT 1;

SELECT EXTRACT(DOW FROM payment_date) AS day_of_week, SUM(amount) AS total_amount
FROM greencycles.public.payment
GROUP BY day_of_week
ORDER BY SUM(amount) DESC
LIMIT 1;

SELECT customer_id, SUM(amount) AS total_amount_spent, EXTRACT(WEEK FROM payment_date) AS WEEK
FROM greencycles.public.payment
GROUP BY WEEK, customer_id
ORDER BY SUM(amount) DESC
LIMIT 1;
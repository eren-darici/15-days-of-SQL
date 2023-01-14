/* There are two competitions between the two employees.
   Which employee had the highest sales amount in a single day?
   Which employee had the most sales in a single day? (days that amount is equal to 0 not included)
*/

SELECT staff_id, DATE(payment_date), SUM(amount)
FROM greencycles.public.payment
GROUP BY staff_id, DATE(payment_date)
ORDER BY SUM(amount) DESC
LIMIT 1;

SELECT staff_id, SUM(amount), COUNT(amount)
FROM greencycles.public.payment
WHERE amount != 0
GROUP BY staff_id, DATE(payment_date)
ORDER BY SUM(amount) DESC
LIMIT 1;
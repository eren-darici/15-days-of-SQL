/* In 2020, April 28, 29 and 30 were days with very high revenue.
   Find out what is the average payment amount grouped by customer and day. Consider only the days and customers with more than 1 payment.
*/

SELECT ROUND(AVG(amount), 2) AS avg_amount, count(*)
FROM greencycles.public.payment
WHERE DATE(payment_date) IN ('2020-04-28', '2020-04-29', '2020-04-30')
GROUP BY customer_id, DATE(payment_date)
HAVING COUNT(*) > 1
ORDER BY avg_amount DESC;
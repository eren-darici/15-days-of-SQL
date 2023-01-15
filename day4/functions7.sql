/* You need to sum payments and group in the following formats:
   Weekday, Day/Month/Year
   Month, Year
   Weekday, Hour:Minute
*/

SELECT SUM(amount) AS total_amount, TO_CHAR(payment_date, 'Dy, DD/MM/YY') AS day
FROM greencycles.public.payment
GROUP BY day
ORDER BY total_amount DESC;

SELECT SUM(amount) AS total_amount, TO_CHAR(payment_date, 'Mon, YYYY') AS date
FROM greencycles.public.payment
GROUP BY date
ORDER BY total_amount DESC;

SELECT SUM(amount) AS total_amount, TO_CHAR(payment_date, 'Dy, HH:MI') AS date
FROM greencycles.public.payment
GROUP BY date
ORDER BY total_amount DESC;
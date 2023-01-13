/* How many payments were made by the customer with the id 100? */
SELECT COUNT(*) AS number_of_payments
FROM greencycles.public.payment
WHERE customer_id = 100;

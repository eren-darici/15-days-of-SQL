/* The sales manager asks you for a list of all the payment id's with an amount less than or equal to $2 */
SELECT payment_id, amount
FROM greencycles.public.payment
WHERE amount <= 2
ORDER BY amount DESC;
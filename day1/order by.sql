/* Order customer list by last name Z to A and first name as second criteria Z to A */
SELECT first_name, last_name, email
FROM greencycles.public.customer
ORDER BY last_name DESC, first_name DESC;
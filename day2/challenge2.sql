/* List all customers where first name contains 'ER' and has an 'A' as the second letter. Order results by the name descendingly. */
SELECT *
FROM greencycles.public.customer
WHERE first_name LIKE '%ER%' AND first_name LIKE '_A%';
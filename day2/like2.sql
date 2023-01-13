/* How many customers are there with a first name that is 3 letters long and either 'X' or a 'Y' as the last letter in the last name? */
SELECT *
FROM greencycles.public.customer
WHERE length(first_name) = 3 AND (first_name LIKE '%X'
   OR first_name LIKE '%Y');
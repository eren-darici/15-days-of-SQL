/* How many distinct last names of the customers are there? */
SELECT DISTINCT COUNT(last_name) as last_name_count
FROM greencycles.public.customer;
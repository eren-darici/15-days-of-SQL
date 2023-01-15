/* In the email system there was a problem with names where either the first or last name is more than 10 characters long.
   Find these customers and output the list of these first and last names in all lower case.
*/

SELECT LOWER(first_name), LOWER(last_name)
FROM greencycles.public.customer
WHERE LENGTH(first_name) > 10 OR LENGTH(last_name) > 10;
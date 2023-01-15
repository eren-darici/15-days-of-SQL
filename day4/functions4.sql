/* Extract the first name from the email address and concatenate it with the last name.
   It should be in the form: "Last name, first name"
*/

SELECT CONCAT(RIGHT(last_name, POSITION(last_name IN email) + 1), ', ', LEFT(email, POSITION(last_name IN email) - 2))
FROM greencycles.public.customer;
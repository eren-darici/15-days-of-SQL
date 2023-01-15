/* Create an anonymized form of the email addressess in the following way:
   M***.S***@sakilacustomer.org
*/

SELECT CONCAT(LEFT(first_name, 1), '***.', LEFT(last_name, 1), '***', SUBSTRING(email, POSITION('@' IN email)))
FROM greencycles.public.customer;


/* Create an anonymized form of the email addressess in the following way:
   ***Y.S***@sakilacustomer.org
*/

SELECT CONCAT('***', RIGHT(first_name, 1), '.', LEFT(last_name, 1), '***', SUBSTRING(email, POSITION('@' IN email)))
FROM greencycles.public.customer;
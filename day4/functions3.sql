/* You need to create an anonymized version of the email addresses.
   It should be the first character followed by *** then the last part starting with @
*/

SELECT CONCAT(LEFT(email, 1), '***', RIGHT(email, 19)) AS email_anonymized
FROM greencycles.public.customer;
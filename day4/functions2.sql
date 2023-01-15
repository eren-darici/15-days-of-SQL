/* Extract the last 5 characters of the email address of customers. */

SELECT RIGHT(email, 5)
FROM greencycles.public.customer;

/* Extract the dots only */

SELECT LEFT(RIGHT(email, 4), 1)
FROM greencycles.public.customer;

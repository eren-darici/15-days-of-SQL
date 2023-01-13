/* There have been 6 complaints of customers about their payments.
   customer id's are: 12, 25, 67, 93, 124, 234
   The concerned payments are all the payments of these customers with amounts 4.99, 7.99 and 9.99
   List the concerned payments.
 */

SELECT *
FROM greencycles.public.payment
WHERE customer_id IN (12, 25, 67, 93, 124, 234)
  AND amount IN (4.99, 7.99, 9.99)
ORDER BY customer_id ASC, amount ASC;
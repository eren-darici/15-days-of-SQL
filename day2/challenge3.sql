/* How many payments are there where the amount is either 0 or is between 3.99 and 7.99 and at the same time happened on 2020-05-01. */
SELECT COUNT(*)
FROM greencycles.public.payment
WHERE (amount = 0 OR amount BETWEEN 3.99 AND 7.99)
  AND (payment_date BETWEEN '2020-05-01' AND '2020-05-02');
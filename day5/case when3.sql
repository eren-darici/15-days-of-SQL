/* Create a tier list in the following way:
   Rating is 'PG' or 'PG-13' or length is more than 210 min: Great rating or long (tier 1)
   Description contains 'Drama' and length is more than 90min: Long drama (tier 2)
   Description contains 'Drama' and length is not more than 90min: Short drama (tier 3)
   Rental_rate less than $1: Very cheap (tier 4)
*/

SELECT title,
       CASE
           WHEN rating = 'PG' or rating = 'PG-13' or length > 210 THEN 'Great rating or long (tier 1)'
           WHEN description LIKE '%Drama%' AND length > 90 THEN 'Long drama (tier 2)'
           WHEN description LIKE '%Drama%' AND length <= 90 THEN 'Short drama (tier 3)'
           WHEN rental_rate < 1 THEN 'Very cheap (tier 4)'
           END AS tier_list
FROM greencycles.public.film
WHERE CASE
          WHEN rating = 'PG' or rating = 'PG-13' or length > 210 THEN 'Great rating or long (tier 1)'
          WHEN description LIKE '%Drama%' AND length > 90 THEN 'Long drama (tier 2)'
          WHEN description LIKE '%Drama%' AND length <= 90 THEN 'Short drama (tier 3)'
          WHEN rental_rate < 1 THEN 'Very cheap (tier 4)'
          END IS NOT NULL;
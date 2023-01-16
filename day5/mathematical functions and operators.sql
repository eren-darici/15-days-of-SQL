/* Create a list of the films including the relation of rental rate/replacement cost
   where the percentage is less than 4%
*/

SELECT title, ROUND((rental_rate / replacement_cost * 100), 2) || '%' as percentage
FROM greencycles.public.film
WHERE ROUND((rental_rate / replacement_cost) * 100, 2) < 4;
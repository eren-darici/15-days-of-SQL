/* A manager wants to get a better understanding of the films.
   Manager wants to see the:
   - Minimum
   - Maximum
   - Average (rounded)
   - Sum
   of the replacement cost of the films.
*/

SELECT MIN(replacement_cost), MAX(replacement_cost), ROUND(AVG(replacement_cost), 2) AS avg, SUM(replacement_cost)
FROM greencycles.public.film;
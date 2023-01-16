/* You need to find out how many flights have departed in the following seasons:
   Winter: December, January, February
   Spring: March, April, May
   Summer: June, July, August
   Fall: September, October, November
*/

SELECT COUNT(*),
       CASE
           WHEN EXTRACT(MONTH FROM scheduled_departure) IN (12, 1, 2) THEN 'Winter'
           WHEN EXTRACT(MONTH FROM scheduled_departure) IN (3, 4, 5) THEN 'Spring'
           WHEN EXTRACT(MONTH FROM scheduled_departure) IN (6, 7, 8) THEN 'Summer'
           ELSE 'Fall'
           END AS seasons
FROM demo.bookings.flights
GROUP BY seasons;
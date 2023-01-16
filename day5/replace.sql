/* Remove 'PG' from flight no and change data type to INT */
SELECT flight_no, CAST(REPLACE(flight_no, 'PG', '') AS INT)
FROM demo.bookings.flights;
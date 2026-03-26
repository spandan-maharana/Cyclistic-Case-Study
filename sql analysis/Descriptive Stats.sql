---Mean Ride Length---
SELECT AVG(ride_length_min) FROM bike_trips;

---Max Ride Length---
SELECT MAX(ride_length_min) FROM bike_trips;

---Min Ride Length---
SELECT MIN(ride_length_min) FROM bike_trips;

---Mode of day of week---
SELECT day_of_week, COUNT(*) AS ride_count FROM bike_trips GROUP BY day_of_week ORDER BY ride_count DESC LIMIT 1;

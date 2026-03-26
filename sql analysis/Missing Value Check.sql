---Checking Missing Values---
SELECT COUNT(*) FILTER (WHERE ride_id IS NULL) AS null_ride_id,
COUNT(*) FILTER (WHERE started_at IS NULL) AS null_start_time,
COUNT(*) FILTER (WHERE ended_at IS NULL) AS null_end_time,
COUNT(*) FILTER (WHERE member_casual IS NULL) AS null_user_type,
COUNT(*) FILTER (WHERE ride_length_min IS NULL) AS null_ride_length
FROM bike_trips;


---Removing Critical NULL Rows---
DELETE FROM bike_trips
WHERE ride_id IS NULL
   OR started_at IS NULL
   OR ended_at IS NULL
   OR member_casual IS NULL
   OR ride_length_min IS NULL;

SELECT COUNT(*) FROM bike_trips;

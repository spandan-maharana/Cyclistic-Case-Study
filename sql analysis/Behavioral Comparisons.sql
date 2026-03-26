---1. Average Ride Length by User---
SELECT member_casual, avg(ride_length_min) as avg_ride_length from bike_trips group by member_casual;

---2. Ride Count by Day of Week---
SELECT member_casual, day_of_week, count(*) as ride_count from bike_trips group by member_casual, day_of_week order by day_of_week;

---3. Average Ride Length by Day---
SELECT member_casual, day_of_week, AVG(ride_length_min) AS avg_ride_length FROM bike_trips GROUP BY member_casual, day_of_week;

---4. Seasonal Trends---
SELECT month, member_casual, COUNT(*) AS ride_count FROM bike_trips GROUP BY month, member_casual;

---5. Hourly Ride Patterns---
SELECT hour, member_casual, COUNT(*) AS ride_count FROM bike_trips GROUP BY hour, member_casual ORDER BY hour;

---6. Bike Type Usage---
SELECT member_casual, rideable_type, count(*) as ride_count from bike_trips group by member_casual, rideable_type;

---7. Summary Tables---
CREATE TABLE rides_by_user_type AS SELECT member_casual, COUNT(*) AS total_rides FROM bike_trips GROUP BY member_casual;
CREATE TABLE avg_ride_length AS SELECT member_casual, AVG(ride_length_min) AS avg_ride_length FROM bike_trips GROUP BY member_casual;
CREATE TABLE rides_by_weekday AS SELECT member_casual, extract(dow from started_at) as weekday_number, day_of_week, COUNT(*) AS ride_count FROM bike_trips GROUP BY member_casual, weekday_number, day_of_week order by weekday_number;
CREATE TABLE rides_by_month AS SELECT member_casual, extract(month from started_at) as month_number, to_char(started_at,'Month') as month_name, COUNT(*) AS ride_count FROM bike_trips GROUP BY member_casual, month_number, month_name order by month_number;
CREATE TABLE rides_by_hour AS SELECT member_casual, hour, COUNT(*) AS ride_count FROM bike_trips GROUP BY member_casual, hour;
CREATE TABLE ride_length_distribution AS SELECT member_casual, 
CASE
    WHEN ride_length_min < 10 THEN '0-10 min'
    WHEN ride_length_min < 20 THEN '10-20 min'
    WHEN ride_length_min < 30 THEN '20-30 min'
    WHEN ride_length_min < 60 THEN '30-60 min'
    ELSE '60+ min'
END AS duration_bucket, COUNT(*) AS ride_count FROM bike_trips GROUP BY member_casual, duration_bucket;
CREATE TABLE bike_type_usage AS SELECT member_casual, rideable_type, COUNT(*) AS ride_count FROM bike_trips GROUP BY member_casual, rideable_type;

drop table rides_by_weekday;
drop table rides_by_month;
drop table rides_by_hour;

SELECT * from rides_by_user_type;
SELECT * from avg_ride_length;
SELECT * from rides_by_weekday;
SELECT * from rides_by_month;
SELECT * from rides_by_hour;
SELECT * from ride_length_distribution;
SELECT * from bike_type_usage;

COPY rides_by_user_type TO '/Users/spandanmaharana/Desktop/BI Case Studies/Case Study 1/Cyclistic Case Study/sql analysis/rides_by_user_type.csv' WITH (FORMAT CSV, HEADER TRUE);
COPY avg_ride_length TO '/Users/spandanmaharana/Desktop/BI Case Studies/Case Study 1/Cyclistic Case Study/sql analysis/avg_ride_length.csv' WITH (FORMAT CSV, HEADER TRUE);
COPY rides_by_weekday TO '/Users/spandanmaharana/Desktop/BI Case Studies/Case Study 1/Cyclistic Case Study/sql analysis/rides_by_weekday.csv' WITH (FORMAT CSV, HEADER TRUE);
COPY rides_by_month TO '/Users/spandanmaharana/Desktop/BI Case Studies/Case Study 1/Cyclistic Case Study/sql analysis/rides_by_month.csv' WITH (FORMAT CSV, HEADER TRUE);
COPY rides_by_hour TO '/Users/spandanmaharana/Desktop/BI Case Studies/Case Study 1/Cyclistic Case Study/sql analysis/rides_by_hour.csv' WITH (FORMAT CSV, HEADER TRUE);
COPY ride_length_distribution TO '/Users/spandanmaharana/Desktop/BI Case Studies/Case Study 1/Cyclistic Case Study/sql analysis/ride_length_distribution.csv' WITH (FORMAT CSV, HEADER TRUE);
COPY bike_type_usage TO '/Users/spandanmaharana/Desktop/BI Case Studies/Case Study 1/Cyclistic Case Study/sql analysis/bike_type_usage.csv' WITH (FORMAT CSV, HEADER TRUE);



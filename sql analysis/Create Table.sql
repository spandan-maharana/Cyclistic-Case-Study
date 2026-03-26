---Create Table for Database, to store the records---
CREATE TABLE bike_trips(
ride_id TEXT,
rideable_type TEXT,
started_at TIMESTAMP,
ended_at TIMESTAMP,
start_station_name TEXT,
start_station_id TEXT,
end_station_name TEXT,
end_station_id TEXT,
start_lat DOUBLE PRECISION,
start_lng DOUBLE PRECISION,
end_lat DOUBLE PRECISION,
end_lng DOUBLE PRECISION,
member_casual TEXT,
ride_length INTERVAL,
ride_length_min DOUBLE PRECISION,
day_of_week TEXT,
month TEXT,
hour INTEGER
);

---Viewing the records of the table---
SELECT * FROM bike_trips;





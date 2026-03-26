---Confirming total number of rows---
SELECT COUNT(*) FROM bike_trips;

---Checking rider types---
select member_casual, count(*) from bike_trips group by member_casual;


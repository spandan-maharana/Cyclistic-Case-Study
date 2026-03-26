--- Casual Riders that behave like members
select * from bike_trips where member_casual = 'casual' and ride_length_min < 15 and day_of_week in ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday');

--- Peak Usage
select member_casual, hour, count(*) as rides from bike_trips group by member_casual, hour
order by hour;

--- Weekend vs Weekday Split Comparison
select member_casual, case when day_of_week in ('Saturday', 'Sunday') then 'Weekend' else 'Weekday' end as day_type, count(*) as ride_count from bike_trips group by member_casual, day_type;


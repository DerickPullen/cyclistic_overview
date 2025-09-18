-- 06F_avg_ride_length
SELECT member_casual, ROUND(AVG(ride_length_min),1) AS avg_minutes
FROM `projects-467303.cyclistic.trips_clean`
GROUP BY member_casual;
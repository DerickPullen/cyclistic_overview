-- 06I_by_hour
SELECT member_casual, EXTRACT(HOUR FROM started_at) AS hour_of_day, COUNT(*) AS rides
FROM `projects-467303.cyclistic.trips_clean`
GROUP BY member_casual, hour_of_day
ORDER BY member_casual, hour_of_day;
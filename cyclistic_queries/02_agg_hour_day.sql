-- 06B_hour_day_counts
CREATE OR REPLACE TABLE `projects-467303.cyclistic.agg_hour_day` AS
SELECT
  FORMAT_DATE('%a', DATE(started_at)) AS weekday,   -- Sun..Sat
  EXTRACT(HOUR FROM started_at) AS hour_of_day,     -- 0..23
  member_casual,
  COUNT(*) AS rides
FROM `projects-467303.cyclistic.trips_clean`
GROUP BY weekday, hour_of_day, member_casual
ORDER BY weekday, hour_of_day, member_casual;
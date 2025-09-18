-- 06H_by_weekday
SELECT
  member_casual,
  FORMAT_DATE('%a', DATE(started_at)) AS weekday,
  COUNT(*) AS rides
FROM `projects-467303.cyclistic.trips_clean`
GROUP BY member_casual, weekday
ORDER BY member_casual, weekday;
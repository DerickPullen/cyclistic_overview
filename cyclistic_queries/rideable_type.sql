SELECT
  member_casual,
  rideable_type,
  COUNT(*) AS rides
FROM `projects-467303.cyclistic.trips_clean`
GROUP BY member_casual, rideable_type;
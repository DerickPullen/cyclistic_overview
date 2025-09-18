SELECT
  MIN(ride_length_min) AS min_min,
  ROUND(AVG(ride_length_min),1) AS avg_min,
  APPROX_QUANTILES(ride_length_min, 100)[OFFSET(50)] AS median_min,
  MAX(ride_length_min) AS max_min
FROM `projects-467303.cyclistic.trips_clean`;
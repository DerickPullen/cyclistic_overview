-- 06C_bike_type_mix
CREATE OR REPLACE TABLE `projects-467303.cyclistic.agg_bike_type` AS
SELECT member_casual, rideable_type, COUNT(*) AS rides
FROM `projects-467303.cyclistic.trips_clean`
GROUP BY member_casual, rideable_type
ORDER BY member_casual, rides DESC;
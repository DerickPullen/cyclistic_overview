SELECT
  member_casual,
  SUM(CASE WHEN weekday IN ('Mon','Tue','Wed','Thu','Fri')
            AND (hour_of_day BETWEEN 7 AND 10 OR hour_of_day BETWEEN 16 AND 19)
           THEN rides ELSE 0 END) AS commute_rides,
  SUM(rides) AS total_rides,
  SAFE_DIVIDE(
    SUM(CASE WHEN weekday IN ('Mon','Tue','Wed','Thu','Fri')
              AND (hour_of_day BETWEEN 7 AND 10 OR hour_of_day BETWEEN 16 AND 19)
             THEN rides ELSE 0 END),
    SUM(rides)
  ) AS commute_share
FROM `projects-467303.cyclistic.agg_hour_day`
GROUP BY member_casual;
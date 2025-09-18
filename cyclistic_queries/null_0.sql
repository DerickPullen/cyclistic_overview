SELECT
  COUNTIF(started_at IS NULL) AS null_started,
  COUNTIF(ended_at   IS NULL) AS null_ended
FROM `projects-467303.cyclistic.trips_clean`;
EXPORT DATA OPTIONS (
  uri='gs://cyclistic-portfolio-dp/exports/agg_bike_type_*.csv',
  format='CSV',
  overwrite=true,
  header=true
) AS
SELECT * FROM `projects-467303.cyclistic.agg_bike_type`;
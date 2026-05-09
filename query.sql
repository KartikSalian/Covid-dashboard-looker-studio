SELECT
  date,
  country_name,
  new_confirmed,
  new_deceased,
  cumulative_confirmed,
  cumulative_deceased,
  cumulative_vaccine_doses_administered,
  population
FROM
  `bigquery-public-data.covid19_open_data.covid19_open_data`
WHERE
  aggregation_level = 0
  AND date >= '2021-01-01'
  AND country_name IS NOT NULL

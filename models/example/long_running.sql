{{ config(materialized='table') }}

WITH

fan_out AS (
  SELECT
    generate_series AS fan
  FROM generate_series(1,10)
)

SELECT
    first_name || last_name AS name
  , COUNT(*)
  , CURRENT_DATE AS updated_at
FROM actor
JOIN fan_out
  ON 1=1
WHERE random() < random()
GROUP BY first_name || last_name

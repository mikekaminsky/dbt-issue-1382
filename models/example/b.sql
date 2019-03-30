
WITH

fan_out AS (
  SELECT
    generate_series AS fan
  FROM generate_series(1,100)
)

SELECT
    city
  , COUNT(*)
FROM city
JOIN fan_out
  ON 1=1
WHERE random() < random()
GROUP BY city

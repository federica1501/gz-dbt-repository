{{ config(materialized='table') }}

WITH
  source_data AS (
    SELECT *
    FROM {{ source('raw','ship') }}
  ),

  stg_ship AS (
    SELECT *
    FROM source_data
  )

SELECT *
FROM stg_ship
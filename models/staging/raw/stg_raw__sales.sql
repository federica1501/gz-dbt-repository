{{ config(materialized='table') }}

WITH
  source_data AS (
    SELECT * 
    FROM {{ source('raw','sales') }}
  ),

  stg_sales AS (
    SELECT *
    FROM source_data
  )

SELECT *
FROM stg_sales
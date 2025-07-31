{{ config(materialized='table') }}

WITH 
  source_data AS (
    SELECT * 
    FROM {{ source('raw','product') }}
  ),

  stg_product AS (
    SELECT *
    FROM source_data
  )

SELECT *
FROM stg_product

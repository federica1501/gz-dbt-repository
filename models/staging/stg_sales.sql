{{ config(materialized='table') }}

with source_data as (
  select *
  from {{ source('raw','sales') }}
)

select
  *  
from source_data
where sales_id is not null
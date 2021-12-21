{{ config(materialized='table', as_columnstore=false) }}

SELECT *
FROM {{ ref('Dummy_Data_dbt_Transformed') }}
{{ config(materialized='table', as_columnstore=false) }}

SELECT
'DummyData_Brooke_File1.txt' as Filename
, LEFT(LineFromFile, 1) as RecordIdentifier
, RIGHT(LEFT(LineFromFile, 10), 9) as TotalNumberOfClaims
, RIGHT(LEFT(LineFromFile, 24), 14) as TotalAmountPayable
, RIGHT(LEFT(LineFromFile, 33), 9) as TotalAdminFeeAmount
, RIGHT(LineFromFile, 917) as Filler
FROM {{ source('RawSource','DummyData_Brooke_File1_dbt') }}
WHERE LineNumber = (
    SELECT
    MAX(LineNumber)
    FROM {{ source('RawSource','DummyData_Brooke_File1_dbt') }}
)

UNION ALL

SELECT
'DummyData_Brooke_File2.txt' as Filename
, LEFT(LineFromFile, 1) as RecordIdentifier
, RIGHT(LEFT(LineFromFile, 10), 9) as TotalNumberOfClaims
, RIGHT(LEFT(LineFromFile, 24), 14) as TotalAmountPayable
, RIGHT(LEFT(LineFromFile, 33), 9) as TotalAdminFeeAmount
, RIGHT(LineFromFile, 917) as Filler
FROM {{ source('RawSource','DummyData_Brooke_File2_dbt') }}
WHERE LineNumber = (
    SELECT
    MAX(LineNumber)
    FROM {{ source('RawSource','DummyData_Brooke_File2_dbt') }}
)
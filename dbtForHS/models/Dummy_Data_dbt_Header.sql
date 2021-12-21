{{ config(materialized='table', as_columnstore=false) }}

SELECT
'DummyData_Brooke_File1.txt' as Filename
, LEFT(LineFromFile, 1) as RecordIdentifier
, RIGHT(LEFT(LineFromFile, 9), 8) as RunDate
, RIGHT(LEFT(LineFromFile, 29), 20) as SendingCompanyName
, RIGHT(LEFT(LineFromFile, 37), 8) as CycleStartDate
, RIGHT(LEFT(LineFromFile, 45), 8) as CycleEndDate
, RIGHT(LineFromFile, 905) as Filler
FROM {{ source('RawSource','DummyData_Brooke_File1_dbt') }}
WHERE LineNumber = 1

UNION ALL

SELECT
'DummyData_Brooke_File2.txt' as Filename
, LEFT(LineFromFile, 1) as RecordIdentifier
, RIGHT(LEFT(LineFromFile, 9), 8) as RunDate
, RIGHT(LEFT(LineFromFile, 29), 20) as SendingCompanyName
, RIGHT(LEFT(LineFromFile, 37), 8) as CycleStartDate
, RIGHT(LEFT(LineFromFile, 45), 8) as CycleEndDate
, RIGHT(LineFromFile, 905) as Filler
FROM {{ source('RawSource','DummyData_Brooke_File2_dbt') }}
WHERE LineNumber = 1
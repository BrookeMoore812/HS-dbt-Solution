USE HealthStrategy_dbt;
GO
-- Create schema to separate raw data from cleaned up and transformed data
CREATE SCHEMA RawSource;
GO
-- Create table to hold raw data
CREATE TABLE RawSource.DummyData_Brooke_File1_dbt (
	LineFromFile VARCHAR(max)
	, LineNumber INT IDENTITY(1,1) NOT NULL
)
;
GO
CREATE TABLE RawSource.DummyData_Brooke_File2_dbt (
	LineFromFile VARCHAR(max)
	, LineNumber INT IDENTITY(1,1) NOT NULL
)
;
GO















/*
Already created BCP format file with the following command:

bcp HealthStrategy_dbt.RawSource.DummyData_Brooke_File1_dbt format nul -c -x -f "C:\Users\Brooke\BCPFormatFile.xml" -t, -T -S DESKTOP-G4V2OAO\SQLEXPRESS
*/



--bcp HealthStrategy_dbt.RawSource.DummyData_Brooke_File1_dbt IN "C:\Users\Brooke\Desktop\Skills_Evaluation\DummyData_Brooke_File1.txt" -f "C:\GITProjects\HS-dbt-Solution\BCPFormatFile.xml" -T -S DESKTOP-G4V2OAO\SQLEXPRESS
--bcp HealthStrategy_dbt.RawSource.DummyData_Brooke_File2_dbt IN "C:\Users\Brooke\Desktop\Skills_Evaluation\DummyData_Brooke_File2.txt" -f "C:\GITProjects\HS-dbt-Solution\BCPFormatFile.xml" -T -S DESKTOP-G4V2OAO\SQLEXPRESS












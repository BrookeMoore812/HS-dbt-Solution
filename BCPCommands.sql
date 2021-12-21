/*
Already created BCP format file with the following command:

bcp HealthStrategy_dbt.RawSource.DummyData_Brooke_File1_BCP format nul -c -x -f "C:\GITProjects\HS-dbt-Solution\BCPFormatFile.xml" -t, -T -S DESKTOP-G4V2OAO\SQLEXPRESS
*/


--bcp HealthStrategy_dbt.RawSource.DummyData_Brooke_File1_dbt IN "C:\Users\Brooke\Desktop\Skills_Evaluation\DummyData_Brooke_File1.txt" -f "C:\GITProjects\HS-dbt-Solution\BCPFormatFile.xml" -T -S DESKTOP-G4V2OAO\SQLEXPRESS
--bcp HealthStrategy_dbt.RawSource.DummyData_Brooke_File2_dbt IN "C:\Users\Brooke\Desktop\Skills_Evaluation\DummyData_Brooke_File2.txt" -f "C:\GITProjects\HS-dbt-Solution\BCPFormatFile.xml" -T -S DESKTOP-G4V2OAO\SQLEXPRESS
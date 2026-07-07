/*
============================================================
Create Database and Schemas
============================================================
Script Purpuse:
  This script creates a new database named 'DataWarehouse' after checking if it already exists,
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
  within the database: 'bronze', 'silver', and 'gold'.

WARNING:
  Running this script will drop the entire 'DataWarehouse' database if it exists.
  All data in the database will be permanently deleted. proceed with caution
  and ensure you have backups before running this script.
*/


USE master;
GO
-- Drop and recreate the "DataWareHouse" database
IF EXIST (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER Database Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE Datawarehouse;
END;
GO

-- Create the "DataWareHouse" database
CREATE DATABASE Datawarehouse;
GO

USE DataWarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO

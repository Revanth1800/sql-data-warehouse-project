/*
================================================================================
Script Name   : init_database.sql
Project       : SQL Data Warehouse
Author        : Revanth S Y
Created Date  : 2026-08-25
Description   : Initializes the databases required for the Data Warehouse
                project.
Script Purpose:
    - Create the Data Warehouse databases.
    - Create the Bronze, Silver, and Gold databases.
    - Prepare the database environment for subsequent ETL processes
      and table creation scripts.
Warning:
    - This script creates databases if they do not already exist.
    - It does not delete or overwrite existing databases or data.
    - Run this script before executing the Bronze, Silver, and Gold layer
      scripts.
================================================================================
*/
-- =============================================================
-- Create the main project database
-- =============================================================

CREATE DATABASE IF NOT EXISTS datawarehouse;

-- Select the database
USE datawarehouse;

-- =============================================================
-- Create Data Warehouse Layers
-- =============================================================

-- Bronze Layer
CREATE DATABASE IF NOT EXISTS bronze;

-- Silver Layer
CREATE DATABASE IF NOT EXISTS silver;

-- Gold Layer
CREATE DATABASE IF NOT EXISTS gold;

-- =============================================================
-- Verify Databases
-- =============================================================

SHOW DATABASES;

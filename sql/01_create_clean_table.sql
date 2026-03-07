-- 01_create_clean_table.sql
-- Creates a clean working table from the raw Telco dataset
-- This table will be used for all feature engineering steps

CREATE TABLE clean_telco_churn AS
SELECT *
FROM raw_telco_churn;
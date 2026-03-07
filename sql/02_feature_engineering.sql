-- 02_feature_engineering.sql
-- Feature engineering on clean_telco_churn table in MySQL
-- Creates analytical features for churn analysis

-- Create tenure group bands

ALTER TABLE clean_telco_churn
ADD COLUMN TenureGroup VARCHAR(20);

UPDATE clean_telco_churn
SET TenureGroup =
    CASE
        WHEN tenure BETWEEN 0 AND 12 THEN '0-12'
        WHEN tenure BETWEEN 13 AND 24 THEN '13-24'
        WHEN tenure BETWEEN 25 AND 48 THEN '25-48'
        ELSE '49+'
    END;

-- Create binary churn flag

ALTER TABLE clean_telco_churn
ADD COLUMN ChurnFlag INT;

UPDATE clean_telco_churn
SET ChurnFlag = CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END;

-- Group contracts into short-term vs long-term

ALTER TABLE clean_telco_churn
ADD COLUMN ContractCategory VARCHAR(20);

UPDATE clean_telco_churn
SET ContractCategory =
    CASE
        WHEN Contract = 'Month-to-month' THEN 'Short-term'
        ELSE 'Long-term'
    END;

-- Group payment methods into broader categories

ALTER TABLE clean_telco_churn
ADD COLUMN PaymentCategory VARCHAR(20);

UPDATE clean_telco_churn
SET PaymentCategory =
    CASE
        WHEN PaymentMethod LIKE '%electronic check%' THEN 'Electronic'
        WHEN PaymentMethod LIKE '%bank transfer%' 
          OR PaymentMethod LIKE '%credit card%' THEN 'Automatic'
        ELSE 'Other'
    END;

-- Flag for senior citizens

ALTER TABLE clean_telco_churn
ADD COLUMN SeniorCitizenFlag INT;

UPDATE clean_telco_churn
SET SeniorCitizenFlag = CASE WHEN SeniorCitizen = 1 THEN 1 ELSE 0 END;

-- Flag for customers with a partner

ALTER TABLE clean_telco_churn
ADD COLUMN HasPartnerFlag INT;

UPDATE clean_telco_churn
SET HasPartnerFlag = CASE WHEN Partner = 'Yes' THEN 1 ELSE 0 END;
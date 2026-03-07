-- 03_feature_checks.sql
-- SQL queries to explore churn patterns using engineered features
-- These queries help validate feature engineering and generate insights

-- Churn rate by tenure group
SELECT 
    TenureGroup,
    COUNT(*) AS TotalCustomers,
    SUM(ChurnFlag) AS TotalChurned,
    ROUND(AVG(ChurnFlag) * 100, 2) AS ChurnRatePercent
FROM clean_telco_churn
GROUP BY TenureGroup
ORDER BY ChurnRatePercent DESC;

-- Churn rate by contract category
SELECT 
    ContractCategory,
    COUNT(*) AS TotalCustomers,
    SUM(ChurnFlag) AS TotalChurned,
    ROUND(AVG(ChurnFlag) * 100, 2) AS ChurnRatePercent
FROM clean_telco_churn
GROUP BY ContractCategory
ORDER BY ChurnRatePercent DESC;

-- Churn rate by payment category
SELECT 
    PaymentCategory,
    COUNT(*) AS TotalCustomers,
    SUM(ChurnFlag) AS TotalChurned,
    ROUND(AVG(ChurnFlag) * 100, 2) AS ChurnRatePercent
FROM clean_telco_churn
GROUP BY PaymentCategory
ORDER BY ChurnRatePercent DESC;

-- Churn rate by senior citizen flag
SELECT 
    SeniorCitizenFlag,
    COUNT(*) AS TotalCustomers,
    SUM(ChurnFlag) AS TotalChurned,
    ROUND(AVG(ChurnFlag) * 100, 2) AS ChurnRatePercent
FROM clean_telco_churn
GROUP BY SeniorCitizenFlag
ORDER BY ChurnRatePercent DESC;

-- Churn rate by partner status
SELECT 
    HasPartnerFlag,
    COUNT(*) AS TotalCustomers,
    SUM(ChurnFlag) AS TotalChurned,
    ROUND(AVG(ChurnFlag) * 100, 2) AS ChurnRatePercent
FROM clean_telco_churn
GROUP BY HasPartnerFlag
ORDER BY ChurnRatePercent DESC;
-- Phase 4: Churn Analysis

-- Q17: How many accounts have ever churned?
SELECT COUNT(*) FROM accounts
WHERE churn_flag = TRUE;

-- Q18: Overall account churn rate
SELECT 
    COUNT(*) FILTER (WHERE churn_flag = TRUE) AS churned,
    COUNT(*) AS total,
    ROUND(COUNT(*) FILTER (WHERE churn_flag = TRUE) * 100.0 / COUNT(*), 2) AS churn_rate
FROM accounts;

-- Q19: How many churn events occurred?
SELECT COUNT(*) FROM churn_events;

-- Q20: Most common churn reasons
SELECT reason_code, COUNT(reason_code) AS count_reason 
FROM churn_events
GROUP BY reason_code
ORDER BY count_reason DESC;

-- Q21: Monthly churn
SELECT TO_CHAR(DATE_TRUNC('month', churn_date), 'YYYY-MM') AS churn_month,
COUNT(*) AS churn_count
FROM churn_events
GROUP BY churn_month
ORDER BY churn_month;

-- Q22: Churn rate by plan tier
SELECT plan_tier,
COUNT(*) AS total,
COUNT(*) FILTER (WHERE churn_flag = true) AS churned,
ROUND(COUNT(*) FILTER (WHERE churn_flag = true) * 100.0 / COUNT(*), 2) AS churn_rate
FROM accounts
GROUP BY plan_tier
ORDER BY churn_rate DESC;

-- Q23: Churn rate by industry
SELECT industry, COUNT(*) AS total,
COUNT(*) FILTER (WHERE churn_flag = true) AS churned,
ROUND(COUNT(*) FILTER (WHERE churn_flag = true) * 100.0 / COUNT(*), 2) AS churn_rate
FROM accounts
GROUP BY industry
ORDER BY churn_rate DESC;

-- Q24: Churn rate by referral source
SELECT referral_source, COUNT(*) AS total,
COUNT(*) FILTER (WHERE churn_flag = true) AS churned,
ROUND(COUNT(*) FILTER (WHERE churn_flag = true) * 100.0 / COUNT(*), 2)
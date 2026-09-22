-- Phase 2: Customer Analysis

-- Q1: Plan tier distribution
SELECT plan_tier, COUNT(*) AS total_accounts,
ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM accounts), 2) AS percentage
FROM accounts
GROUP BY plan_tier
ORDER BY total_accounts DESC;

-- Q2: Industry wise distribution
SELECT industry, COUNT(*) AS total_accounts
FROM accounts
GROUP BY industry
ORDER BY total_accounts DESC;

-- Q3: Country wise distribution
SELECT country, COUNT(*) AS total_accounts
FROM accounts
GROUP BY country
ORDER BY total_accounts DESC;

-- Q4: Trial vs Paid
SELECT COUNT(CASE WHEN is_trial = true THEN 1 END) AS trial,
COUNT(CASE WHEN is_trial = false THEN 1 END) AS paid
FROM accounts;

-- Q5: Referral source distribution
SELECT referral_source, COUNT(*) AS total_accounts
FROM accounts
GROUP BY referral_source
ORDER BY total_accounts DESC;

-- Q6: Churn flag distribution
SELECT COUNT(*) FROM accounts WHERE churn_flag = TRUE;

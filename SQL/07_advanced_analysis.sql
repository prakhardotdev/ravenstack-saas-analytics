-- Phase 7: Advanced SQL Analysis

-- Q39: Month-over-month usage change using LAG()
SELECT 
    TO_CHAR(DATE_TRUNC('month', usage_date), 'YYYY-MM') AS month,
    SUM(usage_count) AS total_usage,
    LAG(SUM(usage_count)) OVER (ORDER BY DATE_TRUNC('month', usage_date)) AS prev_total_usage,
    SUM(usage_count) - LAG(SUM(usage_count)) OVER (ORDER BY DATE_TRUNC('month', usage_date)) AS mom_change
FROM feature_usage
GROUP BY DATE_TRUNC('month', usage_date)
ORDER BY month;

-- Q40: Rank customers by MRR within each plan
SELECT account_id,
plan_tier,
mrr_amount,
RANK() OVER (PARTITION BY plan_tier ORDER BY mrr_amount DESC) AS rank_in_plan
FROM subscriptions
WHERE end_date IS NULL
ORDER BY plan_tier, rank_in_plan
LIMIT 15;

-- Q41: Top 3 revenue-generating customers in every plan
WITH cte AS(
SELECT account_id,
plan_tier,
mrr_amount,
RANK() OVER (PARTITION BY plan_tier ORDER BY mrr_amount DESC) AS rank_in_plan
FROM subscriptions
WHERE end_date IS NULL
ORDER BY plan_tier, rank_in_plan
)
SELECT * FROM cte
WHERE rank_in_plan <= 3;

-- Q42: 3-month rolling average of churn
SELECT 
    TO_CHAR(DATE_TRUNC('month', churn_date), 'YYYY-MM') AS month,
    COUNT(*) AS monthly_churn,
    ROUND(AVG(COUNT(*)) OVER (ORDER BY DATE_TRUNC('month', churn_date) 
    ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 2) AS rolling_3m_avg
FROM churn_events
GROUP BY DATE_TRUNC('month', churn_date)
ORDER BY month;

-- Q43: Customer cohorts based on signup month
SELECT 
    TO_CHAR(DATE_TRUNC('month', signup_date), 'YYYY-MM') AS cohort_month,
    COUNT(*) AS total_accounts,
    COUNT(*) FILTER (WHERE churn_flag = true) AS churned,
    ROUND(COUNT(*) FILTER (WHERE churn_flag = true) * 100.0 / COUNT(*), 2) AS churn_rate
FROM accounts
GROUP BY cohort_month
ORDER BY cohort_month;

-- Q44: Does downgrade increase churn likelihood?
SELECT 
    preceding_downgrade_flag,
    COUNT(*) AS total_churns,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM churn_events
GROUP BY preceding_downgrade_flag;

-- Q45: Churned customers who had preceding upgrade
SELECT 
    preceding_upgrade_flag,
    COUNT(*) AS total_churns,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM churn_events
GROUP BY preceding_upgrade_flag;

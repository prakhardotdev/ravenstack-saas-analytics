-- Phase 3: Subscription & Revenue Analysis

-- Q7: Total MRR from active subscriptions
SELECT SUM(mrr_amount) FROM subscriptions
WHERE end_date IS NULL;

-- Q8: Total ARR from active subscriptions
SELECT SUM(arr_amount) FROM subscriptions
WHERE end_date IS NULL;

-- Q9: MRR by plan tier
SELECT plan_tier, SUM(mrr_amount) FROM subscriptions
GROUP BY plan_tier;

-- Q10: ARR by plan tier
SELECT plan_tier, SUM(arr_amount) FROM subscriptions
GROUP BY plan_tier;

-- Q11: Average MRR per subscription by plan
SELECT plan_tier, ROUND(AVG(mrr_amount), 2) FROM subscriptions
GROUP BY plan_tier;

-- Q12: Which plan generates highest total revenue
SELECT plan_tier, SUM(arr_amount) AS total_revenue FROM subscriptions
GROUP BY plan_tier
ORDER BY total_revenue DESC
LIMIT 1;

-- Q13: Industries with highest MRR
SELECT industry, SUM(mrr_amount) AS total_revenue FROM subscriptions
JOIN accounts ON accounts.account_id = subscriptions.account_id
GROUP BY industry
ORDER BY total_revenue DESC;

-- Q14: Monthly vs Annual billing count
SELECT billing_frequency, COUNT(subscription_id) FROM subscriptions
GROUP BY billing_frequency;

-- Q15: Auto-renew percentage
WITH cte AS(
SELECT COUNT(subscription_id) AS total_subs,
(SELECT COUNT(subscription_id)
FROM subscriptions
WHERE auto_renew_flag = true) AS auto_subs
FROM subscriptions
)
SELECT ROUND((auto_subs * 100.0 / total_subs), 2) AS auto_renew_percentage
FROM cte;

-- Q16: Upgrades vs Downgrades
SELECT 
    SUM(CASE WHEN upgrade_flag = true THEN 1 ELSE 0 END) AS upgrades,
    SUM(CASE WHEN downgrade_flag = true THEN 1 ELSE 0 END) AS downgrades
FROM subscriptions;
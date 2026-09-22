-- Phase 6: Feature Usage Analysis

-- Q33: Most used features
SELECT feature_name, SUM(usage_count) AS total
FROM feature_usage
GROUP BY feature_name
ORDER BY total DESC
LIMIT 10;

-- Q34: Features with most usage time
SELECT feature_name, SUM(usage_duration_secs) AS total
FROM feature_usage
GROUP BY feature_name
ORDER BY total DESC
LIMIT 10;

-- Q35: Do churned customers have lower usage?
SELECT subscriptions.churn_flag, ROUND(AVG(usage_count), 2) AS avg_usage 
FROM feature_usage
JOIN subscriptions ON feature_usage.subscription_id = subscriptions.subscription_id
GROUP BY subscriptions.churn_flag
ORDER BY avg_usage DESC;

-- Q36: Do churned customers use fewer features?
SELECT a.churn_flag, 
ROUND(AVG(feature_count), 2) AS avg_features
FROM (
    SELECT s.account_id, a.churn_flag,
    COUNT(DISTINCT fu.feature_name) AS feature_count
    FROM feature_usage fu
    JOIN subscriptions s ON fu.subscription_id = s.subscription_id
    JOIN accounts a ON s.account_id = a.account_id
    GROUP BY s.account_id, a.churn_flag
) AS sq
JOIN accounts a ON sq.account_id = a.account_id
GROUP BY a.churn_flag;

-- Q37: Do churned customers have more product errors?
SELECT churn_flag, ROUND(AVG(error_count), 2) AS avg_errors
FROM feature_usage
JOIN subscriptions ON subscriptions.subscription_id = feature_usage.subscription_id
GROUP BY churn_flag;

-- Q38: Usage in period before churn
SELECT 
    ROUND(AVG(fu.usage_count), 2) AS avg_usage_before_churn
FROM feature_usage fu
JOIN subscriptions s ON fu.subscription_id = s.subscription_id
JOIN churn_events ce ON s.account_id = ce.account_id
WHERE fu.usage_date >= ce.churn_date - INTERVAL '30 days'
AND fu.usage_date <= ce.churn_date;

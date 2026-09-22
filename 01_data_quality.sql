

-- How many rows are in each table

SELECT 'accounts' as table_name, COUNT(*) FROM accounts
UNION ALL
SELECT 'subscriptions', COUNT(*) FROM subscriptions
UNION ALL
SELECT 'feature_usage', COUNT(*) FROM feature_usage
UNION ALL
SELECT 'support_tickets', COUNT(*) FROM support_tickets
UNION ALL
SELECT 'churn_events', COUNT(*) FROM churn_events;


-- Q2: Primary Key Uniqueness Check

-- accounts
SELECT account_id, COUNT(*) 
FROM accounts 
GROUP BY account_id 
HAVING COUNT(*) > 1;

-- subscriptions
SELECT subscription_id, COUNT(*) 
FROM subscriptions 
GROUP BY subscription_id 
HAVING COUNT(*) > 1;

-- feature_usage
SELECT usage_id, COUNT(*) 
FROM feature_usage 
GROUP BY usage_id 
HAVING COUNT(*) > 1;

-- support_tickets
SELECT ticket_id, COUNT(*) 
FROM support_tickets 
GROUP BY ticket_id 
HAVING COUNT(*) > 1;

-- churn_events
SELECT churn_event_id, COUNT(*) 
FROM churn_events 
GROUP BY churn_event_id 
HAVING COUNT(*) > 1;


-- Q3: NULL Values Check

-- Primary Keys
SELECT COUNT(*) AS accounts_id_nulls FROM accounts WHERE account_id IS NULL;
SELECT COUNT(*) AS subscription_id_nulls FROM subscriptions WHERE subscription_id IS NULL;
SELECT COUNT(*) AS usage_id_nulls FROM feature_usage WHERE usage_id IS NULL;
SELECT COUNT(*) AS ticket_id_nulls FROM support_tickets WHERE ticket_id IS NULL;
SELECT COUNT(*) AS churn_event_id_nulls FROM churn_events WHERE churn_event_id IS NULL;

-- Important Columns
SELECT COUNT(*) AS start_date_nulls FROM subscriptions WHERE start_date IS NULL;
SELECT COUNT(*) AS mrr_nulls FROM subscriptions WHERE mrr_amount IS NULL;
SELECT COUNT(*) AS churn_date_nulls FROM churn_events WHERE churn_date IS NULL;
SELECT COUNT(*) AS satisfaction_nulls FROM support_tickets WHERE satisfaction_score IS NULL;


-- Q4: Orphan Foreign Keys Check

SELECT COUNT(*) FROM subscriptions
WHERE account_id NOT IN (SELECT account_id FROM accounts);

SELECT COUNT(*) FROM feature_usage
WHERE subscription_id NOT IN (SELECT subscription_id FROM subscriptions);

SELECT COUNT(*) FROM support_tickets
WHERE account_id NOT IN (SELECT account_id FROM accounts);

SELECT COUNT(*) FROM churn_events
WHERE account_id NOT IN (SELECT account_id FROM accounts);


-- Q5: Date Range Check

SELECT MIN(signup_date), MAX(signup_date) FROM accounts;
SELECT MIN(start_date), MAX(start_date) FROM subscriptions;
SELECT MIN(churn_date), MAX(churn_date) FROM churn_events;


-- Q6: Logically Impossible Records

SELECT subscription_id FROM subscriptions
WHERE end_date < start_date;

SELECT ticket_id FROM support_tickets
WHERE closed_at < submitted_at;

SELECT subscription_id FROM subscriptions
WHERE mrr_amount < 0;















-- Phase 5: Support & Customer Experience

-- Q27: Average number of support tickets per account
SELECT ROUND(AVG(count_tickets), 2) 
FROM (SELECT COUNT(*) AS count_tickets 
      FROM support_tickets
      GROUP BY account_id) AS sq;

-- Q28: Do churned customers have more support tickets?
WITH cte AS(
SELECT ROUND(AVG(count_tickets), 2) AS churned 
FROM (SELECT COUNT(*) AS count_tickets 
      FROM support_tickets
      JOIN accounts ON support_tickets.account_id = accounts.account_id
      WHERE churn_flag = true
      GROUP BY support_tickets.account_id) AS sq
),
cte2 AS(
SELECT ROUND(AVG(count_tickets), 2) AS not_churned 
FROM (SELECT COUNT(*) AS count_tickets 
      FROM support_tickets
      JOIN accounts ON support_tickets.account_id = accounts.account_id
      WHERE churn_flag = false
      GROUP BY support_tickets.account_id) AS sq2
)
SELECT * FROM cte, cte2;

-- Q29: Do churned customers have longer resolution times?
WITH cte1 AS(
SELECT ROUND(AVG(resolution_time_hours), 2) AS churned
FROM support_tickets
JOIN accounts ON support_tickets.account_id = accounts.account_id
WHERE churn_flag = true
),
cte2 AS(
SELECT ROUND(AVG(resolution_time_hours), 2) AS not_churned
FROM support_tickets
JOIN accounts ON support_tickets.account_id = accounts.account_id
WHERE churn_flag = false
)
SELECT * FROM cte1, cte2;

-- Q30: Does low satisfaction correlate with churn?
WITH cte1 AS(
SELECT ROUND(AVG(satisfaction_score), 2) AS churned
FROM support_tickets
JOIN accounts ON support_tickets.account_id = accounts.account_id
WHERE churn_flag = true
),
cte2 AS(
SELECT ROUND(AVG(satisfaction_score), 2) AS not_churned
FROM support_tickets
JOIN accounts ON support_tickets.account_id = accounts.account_id
WHERE churn_flag = false
)
SELECT * FROM cte1, cte2;

-- Q31: Escalation rate - churned vs active
SELECT 
    a.churn_flag,
    COUNT(*) AS total_tickets,
    SUM(CASE WHEN st.escalation_flag = true THEN 1 ELSE 0 END) AS escalated,
    ROUND(SUM(CASE WHEN st.escalation_flag = true THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS escalation_rate
FROM support_tickets st
JOIN accounts a ON st.account_id = a.account_id
GROUP BY a.churn_flag;

-- Q32: Which ticket priority is most common?
SELECT priority, COUNT(priority) AS total
FROM support_tickets
GROUP BY priority
ORDER BY total DESC;

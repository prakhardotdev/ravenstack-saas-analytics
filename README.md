# RavenStack SaaS Analytics

An end-to-end SaaS Analytics project built using **PostgreSQL, SQL, and Power BI** to analyze customer behavior, revenue performance, churn, product usage, and support operations.

The project transforms raw SaaS operational data into business-focused insights through SQL analysis and an interactive Power BI dashboard.

---

## 📌 Project Overview

RavenStack is a fictional SaaS company with data covering:

- Customer accounts
- Subscription and revenue information
- Customer churn
- Product feature usage
- Customer support tickets

The objective of this project is to understand:

- How the customer base is performing
- How much recurring revenue the business generates
- Which customers are churning
- How churn impacts revenue
- How customers use product features
- How support operations are performing

---

## 🎯 Business Questions

This project answers the following business questions:

### Customer Analysis
- How many total and active customers does the company have?
- How many customers have churned?
- What is the customer retention rate?
- How are customers distributed across subscription plans?

### Revenue Analysis
- What are the company's MRR and ARR?
- Which subscription plans contribute the most revenue?
- How much revenue is lost through churn?
- What is the average MRR per account?

### Churn Analysis
- What is the overall customer churn rate?
- How much MRR is associated with churn?
- What are the major churn reasons?
- Which subscription plans have the most churned customers?
- How much MRR is currently at risk?

### Product Usage
- How frequently are product features being used?
- How does usage differ across customer segments?
- How many feature events are recorded?
- What is the average usage per account?

### Support Analysis
- How many support tickets are generated?
- What is the average resolution time?
- How quickly are customers receiving their first response?
- What percentage of tickets are escalated?
- What is the average customer satisfaction score?

---

# 📊 Dataset

The project contains **5 main datasets**:

| Dataset | Description |
|---|---|
| `ravenstack_accounts.csv` | Customer account information |
| `ravenstack_subscriptions.csv` | Subscription and recurring revenue data |
| `ravenstack_churn_events.csv` | Customer churn events and reasons |
| `ravenstack_feature_usage.csv` | Product feature usage activity |
| `ravenstack_support_tickets.csv` | Customer support ticket information |

---

# 🛠️ Tools & Technologies

- **PostgreSQL**
- **SQL**
- **Power BI**
- **DAX**
- **Microsoft Excel**
- **Git & GitHub**

---

# 🧮 SQL Analysis

The SQL analysis is divided into multiple analytical areas.

### 01 — Data Quality

- NULL checks
- Duplicate detection
- Data consistency checks
- Invalid values
- Referential integrity checks

### 02 — Customer Analysis

- Customer segmentation
- Active vs churned customers
- Customer distribution
- Customer-level metrics

### 03 — Revenue Analysis

- MRR analysis
- ARR analysis
- Revenue by subscription plan
- Revenue trends
- Average revenue per customer

### 04 — Churn Analysis

- Customer churn rate
- Churned customers
- Churn reasons
- Revenue churn
- MRR at risk

### 05 — Support Analysis

- Ticket volume
- Resolution time
- First response time
- Escalation rate
- Customer satisfaction

### 06 — Usage Analysis

- Feature usage
- Usage by customer segment
- Feature events
- Usage trends

### 07 — Advanced Analysis

- Customer segmentation
- Revenue analysis
- Ranking
- Window functions
- Advanced business metrics

### 08 — Final Insights

Final SQL queries used to extract business-level insights from the dataset.

---

# 📈 Power BI Dashboard

The project contains a **7-page interactive Power BI dashboard**.

### 1. Executive Overview

Provides a high-level view of:

- Total Accounts
- Active Accounts
- Churned Accounts
- Churn Rate
- MRR
- ARR
- Average MRR

### 2. Revenue Analysis

Focuses on:

- MRR
- ARR
- Average MRR
- Revenue by plan
- Churn MRR
- Revenue trends

### 3. Customer Analysis

Analyzes:

- Total customers
- Active customers
- Churned customers
- Retention rate
- ARPU
- Customer acquisition

### 4. Churn & Retention

Analyzes:

- Churn rate
- Retention rate
- Churned customers
- Revenue churn
- MRR at risk
- Churn reasons
- Churn by subscription plan

### 5. Product Usage

Analyzes:

- Feature events
- Active feature users
- Usage per account
- Usage duration
- Product usage trends

### 6. Support Analysis

Analyzes:

- Support tickets
- Open tickets
- Resolution time
- First response time
- Escalation rate
- Customer satisfaction

### 7. Customer Detail

Provides customer-level analysis with interactive filters for deeper investigation.

---

# 💡 Key Business Insights

## 👥 Customer Insights

- The dataset contains **500 customer accounts**.
- **390 accounts are active**, representing approximately **78% of the customer base**.
- **110 accounts have churned**, resulting in an overall customer churn rate of **22%**.
- Customer retention stands at approximately **78%**.
- The difference between active and churned accounts is **280 customers**.
- New customer additions represent the majority of customer additions in the dataset.

### Customer Distribution by Plan

Customer churn rates are relatively close across the major subscription plans:

- **Enterprise:** ~22.08%
- **Basic:** ~22.02%
- **Pro:** ~21.91%

This indicates that the observed churn rate is relatively consistent across the three plans rather than being concentrated in one plan.

---

# 💰 Revenue Insights

- Total Monthly Recurring Revenue (**MRR**) is approximately **$11.34M**.
- Total Annual Recurring Revenue (**ARR**) is approximately **$136.06M**.
- Average MRR per account is approximately **$22.68K**.
- Churned customers represent approximately **$1.18M in churned MRR**.
- The difference between total MRR and churned MRR indicates that the majority of recurring revenue remains associated with non-churned customers.
- Basic and Pro plans contribute roughly similar levels of MRR, while Enterprise contributes a smaller portion of total MRR in the dashboard.

### Revenue Snapshot

| Metric | Value |
|---|---:|
| Total MRR | $11.34M |
| Total ARR | $136.06M |
| Average MRR / Account | $22.68K |
| Churn MRR | $1.18M |
| Total Accounts | 500 |

---

# 📉 Churn & Retention Insights

- **110 out of 500 accounts** have churned.
- Overall customer churn rate is **22%**.
- Customer retention rate is **78%**.
- Churned customers are associated with approximately **$1.18M MRR**.
- The dashboard shows approximately **$10.16M MRR at risk**.
- Revenue churn rate is approximately **10.40%**.
- The customer churn rate (**22%**) is higher than the revenue churn rate (**10.40%**), meaning customer losses are not occurring in the same proportion as recurring revenue losses.
- **Features** is the largest recorded churn reason in the dataset, followed by **Budget** and **Support**.
- By absolute churned-account count, the **Pro plan has the highest number of churned customers**, followed by Basic and Enterprise.

### Churn Snapshot

| Metric | Value |
|---|---:|
| Total Accounts | 500 |
| Churned Accounts | 110 |
| Active Accounts | 390 |
| Customer Churn Rate | 22.00% |
| Retention Rate | 78.00% |
| Churn MRR | $1.18M |
| Revenue Churn Rate | 10.40% |
| MRR at Risk | $10.16M |

---

# 📦 Product Usage Insights

- The dataset contains approximately **25K feature events**.
- Approximately **5K active feature users** are recorded.
- Average feature usage is approximately **5.03 events per account**.
- Total recorded usage duration is approximately **21K** units.
- Basic and Pro customers account for a large share of feature activity in the dashboard.
- Product usage shows an upward pattern across the observed period, with stronger activity toward the later months.
- Usage is distributed across multiple customer segments rather than being concentrated entirely within one subscription plan.

### Usage Snapshot

| Metric | Value |
|---|---:|
| Feature Events | ~25K |
| Active Feature Users | ~5K |
| Avg. Usage / Account | 5.03 |
| Total Usage Duration | ~21K |

---

# 🎧 Support Insights

- Approximately **2K support tickets** are recorded.
- Approximately **2K tickets are shown as open** in the dashboard.
- Average ticket resolution time is approximately **35.94 hours**.
- Average first response time is approximately **88.57 minutes**.
- Support escalation rate is approximately **4.8%**.
- Average customer satisfaction score is approximately **3.98 / 5**.
- Ticket volume is distributed relatively evenly across priority levels.
- The dashboard shows noticeable ticket-volume growth toward the later part of the observed period.

### Support Snapshot

| Metric | Value |
|---|---:|
| Support Tickets | ~2K |
| Open Tickets | ~2K |
| Avg. Resolution Time | 35.94 hrs |
| Avg. First Response | 88.57 min |
| Escalation Rate | 4.8% |
| Avg. Satisfaction | 3.98 / 5 |

---

# 🔎 Key Takeaways

The analysis highlights several important areas for SaaS business monitoring:

### 1. Customer Retention

The company has **500 accounts**, with **390 active accounts** and **110 churned accounts**, resulting in a **22% customer churn rate**.

### 2. Recurring Revenue

The business generates approximately **$11.34M MRR** and **$136.06M ARR** based on the available subscription data.

### 3. Revenue Exposure

Approximately **$1.18M MRR** is associated with churned customers, while the dashboard identifies approximately **$10.16M MRR at risk**.

### 4. Churn Reasons

The largest recorded churn reason is **Features**, followed by **Budget** and **Support**, providing potential areas for further customer-retention investigation.

### 5. Product Engagement

Approximately **25K feature events** are recorded, with average usage of around **5.03 events per account**.

### 6. Support Operations

The support dataset contains approximately **2K tickets**, with an average resolution time of **35.94 hours**, first response time of **88.57 minutes**, and satisfaction score of **3.98/5**.

---

# 🖼️ Dashboard Screenshots

## Executive Overview

![Executive Overview](screenshots/executive_overview.png)

---

## Revenue Analysis

![Revenue Analysis](screenshots/revenue_analysis.png)

---

## Customer Analysis

![Customer Analysis](screenshots/customer_analysis.png)

---

## Churn & Retention

![Churn & Retention](screenshots/churn_retention.png)

---

## Product Usage

![Product Usage](screenshots/product_usage.png)

---

## Support Analysis

![Support Analysis](screenshots/support_analysis.png)

---

## Customer Detail

![Customer Detail](screenshots/customer_detail.png)

---

# 📁 Project Structure

```text
ravenstack-saas-analytics/
│
├── data/
│   ├── ravenstack_accounts.csv
│   ├── ravenstack_churn_events.csv
│   ├── ravenstack_feature_usage.csv
│   ├── ravenstack_subscriptions.csv
│   └── ravenstack_support_tickets.csv
│
├── SQL/
│   ├── 01_data_quality.sql
│   ├── 02_customer_analysis.sql
│   ├── 03_revenue_analysis.sql
│   ├── 04_churn_analysis.sql
│   ├── 05_support_analysis.sql
│   ├── 06_usage_analysis.sql
│   ├── 07_advanced_analysis.sql
│   └── 08_final_insights.sql
│
├── PowerBI/
│   └── RavenStack_SaaS_Analytics.pbix
│
├── screenshots/
│   ├── executive_overview.png
│   ├── revenue_analysis.png
│   ├── customer_analysis.png
│   ├── churn_retention.png
│   ├── product_usage.png
│   ├── support_analysis.png
│   └── customer_detail.png
│
└── README.md

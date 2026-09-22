# RavenStack SaaS Analytics

An end-to-end SaaS analytics project using **PostgreSQL, SQL, Power BI and DAX** to analyze revenue, customers, churn, product usage, and customer support performance.

## 📌 Project Overview

RavenStack SaaS Analytics is a business-focused data analytics project designed to understand the performance of a fictional SaaS business.

The project combines **SQL-based data analysis** with an interactive **Power BI dashboard** to transform raw business data into actionable insights.

The analysis focuses on:

* Customer growth and retention
* Recurring revenue performance
* Customer churn
* Product usage
* Customer support performance

---

## 🎯 Business Questions

The project answers the following business questions:

* How is recurring revenue performing?
* How many customers are active and how many have churned?
* What are the major recorded reasons for customer churn?
* How does churn vary across plans and regions?
* Which plans contribute to recurring revenue?
* How is the product being used by customers?
* How is customer support performing?
* What is the customer satisfaction level?
* How quickly are support tickets being resolved?

---

## 🗂️ Dataset

The analysis uses the following business tables:

| Table             | Description                             |
| ----------------- | --------------------------------------- |
| `accounts`        | Customer/account information            |
| `subscriptions`   | Subscription and recurring revenue data |
| `churn_events`    | Customer churn information              |
| `feature_usage`   | Product usage events                    |
| `support_tickets` | Customer support interactions           |

---

## 🔍 SQL Analysis

The SQL analysis is organized into the following modules:

1. **Data Quality**
2. **Customer Analysis**
3. **Revenue Analysis**
4. **Churn Analysis**
5. **Support Analysis**
6. **Usage Analysis**
7. **Advanced Analysis**
8. **Final Insights**

The analysis uses SQL techniques including:

* Filtering
* Aggregations
* GROUP BY / HAVING
* JOINs
* Subqueries
* CTEs
* Window Functions
* Date-based analysis
* Customer segmentation
* Revenue and churn analysis

---

## 📊 Power BI Dashboard

The Power BI dashboard contains seven analytical pages:

### 1. Executive Overview

Provides a high-level view of customers, revenue, churn, and overall business performance.

### 2. Revenue Analysis

Analyzes MRR, ARR, revenue trends, plan-level revenue, and revenue distribution.

### 3. Customer Analysis

Examines customer growth, retention, plans, regions, and acquisition sources.

### 4. Churn & Retention

Analyzes churn rate, churn reasons, revenue churn, MRR at risk, and churn across plans and countries.

### 5. Product Usage

Analyzes feature usage, active feature users, usage trends, and product engagement.

### 6. Support Analysis

Examines support ticket volume, resolution time, response time, escalation rate, and customer satisfaction.

### 7. Customer Detail

Provides a detailed customer-level view for deeper analysis.

---

## 📈 Key Business Insights

### Customer Retention

RavenStack has **500 accounts**, with **390 active accounts** and an overall **22% customer churn rate**.

### Revenue

The business currently shows **11.34M in MRR** and **136.06M in ARR**.

### Churn

**110 accounts** have churned, while the recorded retention rate is **78%**.

### Churn Reasons

**Features** are the largest recorded churn reason in the dataset, followed by budget and support-related reasons.

### Product Usage

Product usage shows an overall upward trend during the reporting period.

### Customer Support

Average customer satisfaction is **3.98 / 5**, with an escalation rate of **4.8%**.

---

## 🛠️ Tools & Technologies

* **PostgreSQL**
* **SQL**
* **Power BI**
* **DAX**
* **Excel / CSV**
* **Git & GitHub**

---

## 📁 Project Structure

```text
ravenstack-saas-analytics/
│
├── README.md
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
└── screenshots/
```

---

## 💡 Project Goal

The goal of this project is to demonstrate an end-to-end analytics workflow:

**Raw Business Data → SQL Analysis → Business Insights → Power BI Dashboard**

The project emphasizes both **technical analysis** and **business-oriented decision support**.

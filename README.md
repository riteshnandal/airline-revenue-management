# airline-revenue-management
Airline Revenue Management Dashboard using Excel, SQL, Power BI and Python
# Air India Revenue Dashboard Project

## Progress Update

### Completed
- Imported flight dataset
- Cleaned raw data
- Added Revenue column
- Created Pivot Table: Revenue by Airline
- Built Revenue chart in Excel

### Tools Used
- Microsoft Excel (Mac)
- GitHub

### Next Steps
- Average fare analysis
- Route analysis
- Power BI dashboard
- SQL queries
- Python forecasting

## Advanced Revenue Analysis

The project includes multiple business-focused analytical reports created using Microsoft Excel Pivot Tables and data visualization techniques.

### Completed Analyses

- Revenue by Airline Analysis
- Route-wise Revenue Analysis
- Monthly Revenue Trend Analysis
- Price Band Breakdown
- Stops-based Revenue and Pricing Analysis
- Departure City Revenue Contribution Analysis

### Key Business Insights

- Identified top-performing airlines based on total revenue
- Analyzed high-revenue flight routes and pricing behavior
- Evaluated monthly travel and revenue trends
- Compared ticket pricing across different stop categories
- Segmented flights into pricing bands for better revenue understanding
- Studied contribution of departure cities toward airline revenue

### Tools Used

- Microsoft Excel
- Pivot Tables
- Data Cleaning & Transformation
- Data Visualization
- GitHub
- VS Code

## 📊 Dashboard Preview

### Revenue & Performance Analysis

![Main KPI Dashboard](/Users/apple/Documents/GitHub/airline-revenue-management/Screenshots/main_dashboard.png)

---

### ✈️ Airline Revenue Analysis
![Airline Revenue](/Users/apple/Desktop/airindia-revenue-dashboard/Screenshots/airline_revenue.png)

---

### 🛣️ Route-wise Revenue Analysis
![Route Analysis](/Users/apple/Documents/GitHub/airline-revenue-management/Screenshots/route_analysis.png)

---

### 📅 Monthly Revenue Trend
![Monthly Trend](/Users/apple/Documents/GitHub/airline-revenue-management/Screenshots/monthly_trend.png)

---

### 💰 Price Band Breakdown
![Price Band Analysis](/Users/apple/Documents/GitHub/airline-revenue-management/Screenshots/price_band.png)

---

### 🛑 Stops-based Revenue Analysis
![Stops Analysis](/Users/apple/Documents/GitHub/airline-revenue-management/Screenshots/stops_analysis.png)

---
## KPI Dashboard & Interactive Analytics

A professional KPI Dashboard was developed using Microsoft Excel to provide interactive airline revenue analysis and business intelligence reporting.

### Dashboard Features

- Interactive KPI Cards
- Revenue Monitoring
- Average Ticket Price Analysis
- Top Airline Identification
- Top Route Performance Tracking
- Monthly Revenue Trend Analysis
- Flight Volume Analysis
- Dynamic Slicers for Interactive Filtering

### Interactive Filters (Slicers)

The dashboard includes slicers connected across pivot tables for dynamic analysis by:
- Airline
- Departure City
- Stops Category
- Price Band

### Business Value

The KPI Dashboard helps:
- Track airline revenue performance
- Identify high-performing routes
- Monitor pricing patterns
- Analyze customer travel trends
- Support revenue optimization decisions

### Dashboard Tools Used

- Microsoft Excel
- Pivot Tables
- Pivot Charts
- Combo Charts
- KPI Reporting
- Slicers
- Data Visualization

## KPI Dashboard Screenshots

![Main KPI Dashboard](screenshots/main_dashboard.png)

# ✈️ Airline Data Analytics | SQL KPI Dashboard

![Visitors](https://img.shields.io/badge/SQL-Data%20Analysis-blue)
![Status](https://img.shields.io/badge/Project-Completed-success)
![Database](https://img.shields.io/badge/MySQL-Workbench-orange)
![Focus](https://img.shields.io/badge/Domain-Airline%20Analytics-purple)

---

## 🚀 Project Summary

A **real-world airline data analytics project** built using SQL to clean, transform, and analyze flight data.  
The objective is to convert raw operational data into **business-ready KPIs and insights** for decision-making.

This project demonstrates **data cleaning, exploratory analysis, and KPI dashboard preparation** using MySQL.

---

## 🎯 Business Problem

Airline datasets often contain:
- Missing values
- Inconsistent route information
- Unstructured stop details

👉 This project solves these issues by transforming raw data into a **clean analytical dataset** ready for reporting.

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|--------|
| MySQL | Database & Querying |
| SQL | Data Cleaning & Analysis |
| MySQL Workbench | Development Environment |
| CSV Dataset | Raw Data Source |

---

## 🧹 Data Engineering Workflow

### 1. Data Cleaning
- Handled missing (`NULL`) values
- Standardized inconsistent fields
- Improved data reliability

### 2. Feature Standardization
- Converted `NULL` in `stops` → **"non stop"**
- Ensured uniform categorical values

### 3. Data Validation
- Verified dataset integrity
- Ensured consistency before analysis

---

## 📊 SQL Analysis (Core Work)

### ✈️ Revenue by Flights to Different Destinations

This analysis focuses on understanding how revenue is generated across different flight destinations. It helps identify which destinations contribute the most to overall airline revenue.

```sql
SELECT destination, SUM(revenue) AS total_revenue
FROM flights
GROUP BY destination
ORDER BY total_revenue DESC;

# airline-revenue-management
Airline Revenue Management Dashboard using Excel, SQL, Power BI and Python
# Airline Revenue Dashboard Project

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
![Airline Revenue](/Users/apple/Documents/GitHub/airline-revenue-management/Screenshots/airline_revenue.png)

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

### 🏙️ Departure City Revenue Contribution
![City Revenue Contribution](/Users/apple/Documents/GitHub/airline-revenue-management/Screenshots/city_revenue.png)


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

---
```

## 🐍 Phase 3 — Python Data Cleaning, EDA & Price Forecasting

### Objective
Clean and transform the raw flight dataset using Python, extract
actionable business insights through exploratory data analysis,
and build a machine learning model to predict ticket prices.

---

### Libraries Used

| Library | Version | Purpose |
|---------|---------|---------|
| pandas | 2.0+ | Data loading, cleaning, transformation |
| numpy | 1.24+ | Numerical operations, outlier detection |
| matplotlib | 3.7+ | Base plotting and chart creation |
| seaborn | 0.12+ | Statistical visualisations |
| scikit-learn | 1.3+ | Price forecasting model |
| os / shutil | built-in | File and folder path management |

---

### Notebook Structure

| Notebook | Description |
|----------|-------------|
| `Python/01_data_cleaning.ipynb` | Full data cleaning pipeline |
| `Python/02_eda_visualisations.ipynb` | 8 EDA charts and insights |
| `Python/03_forecasting_model.ipynb` | Random Forest price prediction |

---

## Part A — Data Cleaning

### Dataset Overview
- Source file : `Data/flights_clean.csv`
- Rows loaded : 10,589
- Columns : 12 original → 24 after feature engineering
- Processed file saved as : `Data/flights_processed.csv`

### Columns Cleaned and Engineered

| Original Column | Issue | Fix Applied | New Columns Created |
|----------------|-------|-------------|-------------------|
| Date_of_Journey | String DD/MM/YY | Converted to datetime | journey_month, journey_day, journey_weekday, journey_quarter, month_name |
| Dep_Time | Mixed formats | Custom multi-format parser | dep_hour, dep_time_of_day |
| Arrival_Time | Mixed formats + next day values | Custom parser + date comparison | arrival_hour, arrival_time_of_day, next_day_arrival |
| Duration | String e.g. 2h 45m | parse_duration() function | duration_mins |
| Total_Stops | Text e.g. non-stop, 1 stop | Mapped to integers | stops_clean |
| Price | Contained outliers | IQR method applied | price_band |

### Cleaning Results

### Feature Engineering — 12 New Columns

| New Column | Type | Description |
|-----------|------|-------------|
| journey_month | int | Month number (1–12) |
| journey_day | int | Day of month |
| journey_weekday | int | Day of week (0=Mon, 6=Sun) |
| journey_quarter | int | Quarter (Q1–Q4) |
| month_name | text | Month abbreviation (Jan, Feb...) |
| dep_hour | int | Departure hour (0–23) |
| dep_time_of_day | text | Morning / Afternoon / Evening / Night |
| arrival_hour | int | Arrival hour (0–23) |
| arrival_time_of_day | text | Morning / Afternoon / Evening / Night |
| next_day_arrival | int | 1 if next day arrival, 0 if same day |
| duration_mins | int | Flight duration in total minutes |
| stops_clean | int | Number of stops as integer (0,1,2,3) |
| price_band | text | Budget / Mid-Range / Premium |

---

## Part B — Exploratory Data Analysis

### Chart 1 — Ticket Price Distribution
![Price Distribution](Screenshots/python/01_price_distribution.png)

**Finding:** Flight prices follow a right-skewed distribution.
Most tickets are priced between ₹5,000 and ₹10,000 placing them
in the Mid-Range band. A small number of premium tickets skew
the mean above the median.

**Business Action:** Protect mid-range pricing while creating
upsell pathways toward the premium tier.

---

### Chart 2 — Total Revenue by Airline
![Revenue by Airline](Screenshots/python/02_revenue_by_airline.png)

**Finding:** Revenue is concentrated among a small number of
airlines. The top performer generates significantly more revenue
than budget carriers despite similar or lower flight volumes,
indicating superior pricing power.

**Business Action:** Prioritise partnership and co-marketing
agreements with the top revenue-generating airline.

---

### Chart 3 — Ticket Price Distribution by Airline
![Airline Boxplot](Screenshots/python/03_airline_price_boxplot.png)

**Finding:** Significant price variance exists between airlines
on similar routes. Full-service carriers show higher median
prices and wider interquartile ranges. Budget carriers cluster
tightly at lower price points.

**Business Action:** Benchmark pricing against full-service
carriers on shared routes to identify underpriced inventory.

---

### Chart 4 — Monthly Revenue Trend vs Average Ticket Price
![Monthly Trend](Screenshots/python/04_monthly_revenue_trend.png)

**Finding:** Revenue shows clear seasonal patterns. Peak months
align with Indian holiday periods. Average ticket price and
total revenue move together during peak periods confirming
demand-driven pricing behaviour.

**Business Action:** Apply dynamic pricing during peak months
to maximise yield per available seat.

---

### Chart 5 — Number of Stops vs Average Ticket Price
![Stops vs Price](Screenshots/python/05_stops_vs_price.png)

**Finding:** Non-stop flights command the highest average prices.
Each additional stop reduces average ticket price. One-stop
flights represent the highest booking volume segment overall.

**Business Action:** Treat non-stop routes as premium inventory.
Optimise connecting flight pricing to prevent cannibalisation
of direct route revenue.

---

### Chart 6 — Top 10 Routes by Total Revenue
![Top 10 Routes](Screenshots/python/06_top_10_routes.png)

**Finding:** The top 10 routes contribute a disproportionate
share of total network revenue combining both high ticket
prices and strong booking volumes.

**Business Action:** Protect capacity on top revenue routes.
Competitor monitoring and yield management efforts should
focus on these routes first.

---

### Chart 7 — Price Band Share
![Price Band](Screenshots/python/07_price_band_share.png)

**Finding:** Mid-Range tickets dominate total flight count
but Premium tickets generate revenue far exceeding their
volume share. Budget tickets have the highest count but
lowest revenue contribution per seat.

**Business Action:** Upsell campaigns should target Mid-Range
customers — they represent the largest opportunity to shift
revenue upward with minimal acquisition cost.

---

### Chart 8 — Correlation Heatmap
![Correlation Heatmap](Screenshots/python/08_correlation_heatmap.png)

**Finding:** Duration in minutes shows the strongest positive
correlation with ticket price. Number of stops shows a negative
correlation. Departure hour and journey month show weaker but
measurable seasonal and time-of-day pricing effects.

| Feature | Correlation with Price | Direction |
|---------|----------------------|-----------|
| duration_mins | Strong | Positive |
| stops_clean | Moderate | Negative |
| journey_month | Weak | Positive |
| dep_hour | Weak | Variable |
| journey_weekday | Weak | Variable |

---

## Part C — Price Forecasting Model

### Model Used
**Random Forest Regressor** — chosen for its ability to handle
mixed data types, non-linear feature relationships, and built-in
feature importance scoring.

### Training Configuration

| Parameter | Value |
|-----------|-------|
| Algorithm | Random Forest Regressor |
| n_estimators | 100 trees |
| Train / Test split | 80% / 20% |
| Training rows | 8,471 |
| Testing rows | 2,118 |
| Random state | 42 |

### Features Used

| Feature | Type | Business Meaning |
|---------|------|-----------------|
| Airline_enc | Encoded | Airline pricing power |
| Source_enc | Encoded | Origin city demand level |
| Destination_enc | Encoded | Destination demand level |
| stops_clean | Integer | Direct vs connecting route |
| duration_mins | Integer | Flight length in minutes |
| journey_month | Integer | Seasonal demand factor |
| journey_weekday | Integer | Day of week pricing effect |
| journey_quarter | Integer | Quarterly demand pattern |
| dep_hour | Integer | Time of day pricing effect |

### Model Performance

### What These Numbers Mean

**MAE ₹1,565** — On average the model predicts ticket price
within ₹1,565 of the actual price. For tickets averaging
₹8,000–₹10,000 this represents approximately 16–20% error
which is acceptable for a dataset without seat class or
booking lead time data.

**R² 0.6416** — The model explains 64.2% of ticket price
variation using only operational features (route, stops,
duration, timing). The remaining 35.8% is likely driven by
factors not present in this dataset such as seat class,
booking window, and real-time demand signals.

**Model Limitation** — This dataset does not include seat
class (Economy / Business / First) or days before departure
which are the two strongest real-world pricing factors.
Including these would likely push R² above 0.85.

### Feature Importance Finding

> Duration in minutes and number of stops are the strongest
> predictors of ticket price, followed by airline identity
> and source city. This confirms that operational route
> characteristics drive pricing more than temporal factors
> in the Indian domestic aviation market.

![Feature Importance](Screenshots/python/feature_importance.png)

![Actual vs Predicted](Screenshots/python/actual_vs_predicted.png)

---

## Key Actionable Insights Summary

| # | Insight | Recommended Business Action |
|---|---------|----------------------------|
| 1 | Top airline drives majority of revenue | Prioritise in partnership and codeshare deals |
| 2 | Top 10 routes generate disproportionate revenue | Protect capacity and increase frequency here |
| 3 | Peak months show clear demand surges | Trigger dynamic pricing algorithms in peak periods |
| 4 | Non-stop flights priced significantly higher | Treat direct routes as premium inventory |
| 5 | Top source city drives most departures | Concentrate marketing and loyalty spend here |
| 6 | Mid-Range segment is largest by volume | Run upsell campaigns to shift customers to Premium |
| 7 | Duration is strongest price predictor | Long-haul routes have best margin and pricing power |
| 8 | Model explains 64% of price variation | Add seat class data to push accuracy above 85% |

---

### How to Reproduce

```bash
# Clone repository
git clone https://github.com/riteshnandal/airline-revenue-management.git
cd airline-revenue-management

# Create and activate virtual environment
python3 -m venv airline_env
source airline_env/bin/activate

# Install dependencies
pip install -r requirements.txt

# Run notebooks in order
# 1. Python/01_data_cleaning.ipynb
# 2. Python/02_eda_visualisations.ipynb
# 3. Python/03_forecasting_model.ipynb
```

---

## 📊 Phase 4 — Power BI Dashboard

### Objective
Design and build an interactive 3-page business intelligence report in Power BI Desktop connecting to the cleaned flight dataset, using DAX measures to deliver dynamic KPIs, trend analysis, and pricing intelligence for airline revenue management stakeholders.

---

### Tool Setup
| Item | Detail |
|------|--------|
| Tool | Microsoft Power BI Desktop |
| Data source | Data/flights_processed.csv |
| File saved as | Power BI/airline_revenue_dashboard.pbix |
| Pages built | 3 report pages |
| DAX measures | 11 custom measures |

---

### Data Model Setup
- Imported `flights_processed.csv` via Get Data → Text/CSV
- Fixed column types in Power Query Editor before loading:
  - `journey_date` → Date
  - `Price`, `Revenue`, `stops_clean`, `duration_mins`, `dep_hour`, `arrival_hour`, `journey_month` → Whole Number
- Renamed table to `Flights` for cleaner DAX syntax
- Marked `journey_date` as date table for time intelligence functions
- Created dedicated `_Measures` table to organise all DAX measures separately from raw columns

---

### DAX Measures Created

#### Core Measures
| Measure | DAX Formula | Format |
|---------|-------------|--------|
| Total Revenue | `SUM(Flights[Revenue])` | ₹ Currency |
| Avg Ticket Price | `AVERAGE(Flights[Price])` | ₹ Currency |
| Total Flights | `COUNTROWS(Flights)` | Whole Number |
| Max Price | `MAX(Flights[Price])` | ₹ Currency |
| Min Price | `MIN(Flights[Price])` | ₹ Currency |
| Revenue Per Flight | `DIVIDE([Total Revenue],[Total Flights])` | ₹ Currency |

#### Advanced Measures
| Measure | Technique Used | Business Purpose |
|---------|---------------|-----------------|
| Premium % | DIVIDE + FILTER | Premium segment share |
| Airline Market Share | CALCULATE + ALL | Competitive position % |
| Current Month Revenue | CALCULATE + FILTER + YEAR/MONTH | Period KPI |
| Previous Month Revenue | CALCULATE + FILTER + EDATE | Period comparison |
| MoM Growth | VAR + DIVIDE + ISBLANK | Month-on-month trend |
| Top Airline | ADDCOLUMNS + TOPN + MAXX | Dynamic label card |
| Top Route | ADDCOLUMNS + TOPN + MAXX | Dynamic label card |

---

### Report Pages

#### Page 1 — Executive Summary
The main landing page designed for senior stakeholders needing a quick revenue overview.

**Visuals included:**
- 6 KPI cards: Total Revenue, Avg Ticket Price, Total Flights, Premium %, Top Airline, Top Route
- Clustered bar chart: Revenue by Airline (sorted descending)
- Line and clustered column combo chart: Monthly Revenue vs Avg Ticket Price (dual axis)
- Donut chart: Revenue by Price Band (Budget / Mid-Range / Premium)
- 3 dropdown slicers: Airline, Month, Source City — connected to all visuals via Report Connections

**Screenshot:**
![Executive Summary](Screenshots/powerbi/01_executive_summary.png)

---

#### Page 2 — Route Analysis
Deep-dive into route performance and stop-wise pricing patterns.

**Visuals included:**
- Horizontal bar chart: Top 10 Routes by Revenue (with Top N visual filter)
- Clustered column chart: Average Ticket Price by Number of Stops
- Detailed table: Route, Total Revenue, Avg Ticket Price, Total Flights, Market Share %
- Slicer: Source City

**Screenshot:**
![Route Analysis](Screenshots/powerbi/02_route_analysis.png)

---

#### Page 3 — Pricing Intelligence
Pricing behaviour analysis across airlines, segments, duration, and time periods.

**Visuals included:**
- Scatter chart: Flight Duration vs Avg Ticket Price (coloured by Airline, sized by Total Flights, with trend line)
- Stacked column chart: Revenue by Airline split by Price Band
- KPI visual: Current Month Revenue vs Previous Month Revenue with directional trend arrow
- MoM Growth card with conditional colour formatting (green = growth, red = decline)

**Screenshot:**
![Pricing Intelligence](Screenshots/powerbi/03_pricing_intelligence.png)

---

### Key Power BI Findings
- Jet Airways and IndiGo together account for over 55% of total network revenue
- Non-stop flights show the highest revenue per flight across all airlines
- May shows the strongest month-on-month revenue growth — 25%+ above April baseline
- Premium price band contributes 35% of revenue from only 18% of flight volume
- Duration and stops are visually confirmed as primary price drivers in the scatter chart

---

### Power BI File
`Power BI/airline_revenue_dashboard.pbix`

Open in Power BI Desktop to explore all 3 pages with live slicer interactivity.

---

## 📈 Phase 5 — Tableau Public Dashboard

### Objective
Build a visually rich interactive dashboard in Tableau Public using the same cleaned dataset, demonstrating tool-agnostic data visualisation skills and delivering a publicly shareable portfolio URL accessible to recruiters without any login or software installation.

---

### Tool Setup
| Item | Detail |
|------|--------|
| Tool | Tableau Public Desktop (free) |
| Data source | Data/flights_processed.csv |
| Published at | https://public.tableau.com/app/profile/ritesh.kumar8399/viz/AirlineRevenueDashboard_17837825187510/AirlineRevenueDashboard |
| Views built | 4 individual views |
| Dashboard | 1 combined interactive dashboard |

---

### Why Tableau in Addition to Power BI
| | Power BI | Tableau Public |
|--|---------|---------------|
| Primary strength | DAX measures and Microsoft ecosystem | Visual design and drag-and-drop exploration |
| Best for | MIS, reporting, corporate BI teams | Analytics, consulting, startup environments |
| Sharing | .pbix file (requires Power BI to open) | Public URL — no login required |
| Used by | TCS, Infosys, KPMG, Deloitte | Startups, MNCs, consulting firms |
| Portfolio value | Shows structured DAX and modelling skills | Shows visual communication and Tableau skills |

Having both tools on the same project demonstrates tool-agnostic data visualisation capability — a significant differentiator in the Indian job market where job descriptions frequently list both.

---

### Data Source Configuration
- Connected `flights_processed.csv` via Connect → Text file
- Set column types in Data Source tab:
  - `journey_date` → Date
  - `Price`, `Revenue`, `duration_mins`, `stops_clean` → Number (Whole)
  - `Airline`, `Source`, `Route`, `price_band` → String
- Renamed data source to `Airline Revenue Data`

---

### Views Built

#### View 1 — Revenue by Airline
**Chart type:** Horizontal bar chart
**Fields used:** Airline (Rows), SUM(Revenue) (Columns), Revenue (Colour — Blue-Teal palette), Revenue (Label)
**Features:** Sorted descending by revenue, formatted ₹ currency labels, detailed tooltip showing airline name, total revenue, avg price, and flight count
**Finding:** Clear revenue hierarchy visible — top 3 airlines dominate with a steep dropoff after rank 3

**Screenshot:**
![Revenue by Airline](Screenshots/tableau/02_revenue_by_airline.png)

---

#### View 2 — Monthly Revenue Trend
**Chart type:** Dual axis combo chart (bar + line)
**Fields used:** journey_date by Month (Columns), SUM(Revenue) as Bar (Rows), AVG(Price) as Line (Rows, dual axis)
**Features:** Independent axis scales for revenue and price, circle markers on price line, blue bars for revenue, orange line for avg price
**Finding:** Revenue and price move together during peak months confirming demand-driven pricing behaviour

**Screenshot:**
![Monthly Trend](Screenshots/tableau/03_monthly_trend.png)

---

#### View 3 — Top 10 Routes by Revenue
**Chart type:** Treemap
**Fields used:** Route (Label + Detail), SUM(Revenue) (Size + Colour — Blue-Green palette)
**Features:** Top 10 filter applied at view level, revenue labels on each tile, colour intensity shows relative revenue size
**Finding:** Top 10 routes visually dominate — revenue concentration is immediately apparent from tile sizes

**Screenshot:**
![Route Treemap](Screenshots/tableau/04_route_treemap.png)

---

#### View 4 — Price Band Revenue Analysis
**Chart type:** Clustered column chart
**Fields used:** price_band (Columns), SUM(Revenue) (Rows), price_band (Colour)
**Colours:** Budget → Blue, Mid-Range → Green, Premium → Amber
**Features:** Revenue labels on each bar, sorted by price band value ascending
**Finding:** Mid-Range dominates volume but Premium generates disproportionate revenue per flight

**Screenshot:**
![Price Band](Screenshots/tableau/05_price_band.png)

---

### Dashboard Assembly

**Dashboard name:** Airline Revenue Management Dashboard
**Size:** Fixed — Generic Desktop (1366 × 768)
**Layout:**

```
┌─────────────────────────────────────────────────┐
│     Airline Revenue Management Dashboard        │
│         (dark navy title bar)                   │
├───────────────────────┬─────────────────────────┤
│   Revenue by Airline  │  Monthly Revenue Trend  │
│   (horizontal bar)    │  (dual axis combo)      │
├───────────────────────┼─────────────────────────┤
│  Top 10 Routes        │  Price Band Analysis    │
│  (treemap)            │  (column chart)         │
└───────────────────────┴─────────────────────────┘
```

**Interactivity added:**
- Airline filter connected to all 4 views via Apply to All Worksheets
- Dashboard Filter Action: clicking any bar in Revenue by Airline filters all other views
- Hover tooltips on every view showing detailed metrics

**Screenshot:**
![Tableau Dashboard]('/Users/apple/Documents/GitHub/airline-revenue-management/Tableau/Screenshots:tableau:01_main_dashboard.png')

---

### Live Dashboard
🔗 **[View Live on Tableau Public](https://public.tableau.com/app/profile/ritesh.kumar8399/viz/AirlineRevenueDashboard_17837825187510/AirlineRevenueDashboard)**

*No login required — accessible directly from any browser on any device*

---

### Key Tableau Findings
- Revenue by Airline confirms top 3 carriers drive the majority of network revenue
- Monthly trend dual axis chart makes seasonal pricing patterns immediately visible
- Route treemap shows revenue concentration is dramatic — top 3 routes visually dwarf all others
- Price band chart confirms Premium segment punches far above its volume weight in revenue contribution

---

## 🎯 Combined BI Dashboard Insights

Both Power BI and Tableau independently confirmed the same six core findings, strengthening confidence in the analysis:

| # | Finding | Power BI Evidence | Tableau Evidence |
|---|---------|------------------|-----------------|
| 1 | Top 3 airlines drive 55%+ revenue | Airline bar chart Page 1 | Revenue by Airline view |
| 2 | Non-stop routes command price premium | Stops column chart Page 2 | Monthly trend tooltip |
| 3 | May–June peak revenue months | Monthly combo chart Page 1 | Monthly trend view |
| 4 | Premium segment = 18% volume, 35% revenue | Price band donut Page 1 | Price Band view |
| 5 | Duration strongest price predictor | Scatter chart Page 3 | Route treemap sizing |
| 6 | Top 10 routes = 45% of total revenue | Route table Page 2 | Route treemap view |

---

## 🗂️ Complete Project Folder Structure

```
airline-revenue-management/
├── Data/
│   ├── flights_clean.csv              ← original raw dataset
│   └── flights_processed.csv          ← cleaned + engineered dataset
├── Excel/
│   └── airline_revenue_analysis.xlsx  ← KPI dashboard + 6 pivots
├── SQL/
│   ├── 01_create_schema.sql
│   ├── 02_revenue_by_airline.sql
│   ├── 03_top_routes.sql
│   ├── 04_monthly_trend.sql
│   ├── 05_price_by_stops.sql
│   ├── 06_source_city.sql
│   ├── 07_market_share.sql
│   ├── 08_price_segments.sql
│   ├── 09_running_total.sql
│   └── 10_create_views.sql
├── Python/
│   ├── 01_data_cleaning.ipynb
│   ├── 02_eda_visualisations.ipynb
│   ├── 03_forecasting_model.ipynb
│   └── requirements.txt
├── Power BI/
│   └── airline_revenue_dashboard.pbix
├── Screenshots/
│   ├── excel/
│   │   ├── kpi_dashboard.png
│   │   ├── route_pivot_heatmap.png
│   │   └── monthly_combo_chart.png
│   ├── sql/
│   │   ├── 01_schema_created.png
│   │   └── 02_data_imported.png
│   ├── python/
│   │   ├── 01_price_distribution.png
│   │   ├── 02_revenue_by_airline.png
│   │   ├── 03_airline_price_boxplot.png
│   │   ├── 04_monthly_revenue_trend.png
│   │   ├── 05_stops_vs_price.png
│   │   ├── 06_top_10_routes.png
│   │   ├── 07_price_band_share.png
│   │   ├── 08_correlation_heatmap.png
│   │   ├── feature_importance.png
│   │   └── actual_vs_predicted.png
│   ├── powerbi/
│   │   ├── 01_executive_summary.png
│   │   ├── 02_route_analysis.png
│   │   └── 03_pricing_intelligence.png
│   └── tableau/
│       ├── 01_main_dashboard.png
│       ├── 02_revenue_by_airline.png
│       ├── 03_monthly_trend.png
│       ├── 04_route_treemap.png
│       └── 05_price_band.png
├── requirements.txt
├── .gitignore
└── README.md
```

---

## 🔗 Project Links

| Resource | Link |
|----------|------|
| GitHub Repository | [github.com/riteshnandal/airline-revenue-management](https://github.com/riteshnandal/airline-revenue-management) |
| Tableau Public Dashboard | [public.tableau.com/app/profile/riteshnandal](https://public.tableau.com/app/profile/ritesh.kumar8399/viz/AirlineRevenueDashboard_17837825187510/AirlineRevenueDashboard) |
| LinkedIn Profile | [linkedin.com/in/riteshnandal](https://linkedin.com/in/ritesh-kumar-5a8655261) |

---

## Bullet Points


```
Airline Revenue Management & Ticket Price Analytics Dashboard
Tools: Excel · SQL (MySQL) · Python · Power BI · Tableau · GitHub

• Built complete end-to-end analytics solution on 10,000+ flight records
  across full lifecycle — cleaning, EDA, ML modelling, and dashboarding

• Engineered 12 analytical features from raw data including duration
  parsing, time-of-day segmentation, and price band classification

• Wrote 10 optimised SQL queries using window functions (RANK, SUM OVER,
  ROWS BETWEEN) for market share, route revenue, and running totals

• Developed Random Forest price prediction model — R² 0.64, MAE ₹1,565
  — identifying duration and airline as primary ticket price drivers

• Built 3-page Power BI dashboard with 11 DAX measures including
  MoM Growth, Airline Market Share, and dynamic Top Airline/Route cards

• Published interactive Tableau Public dashboard with 4 views and
  cross-filter actions — accessible via public URL without login

• Identified Premium segment (18% of volume) drives 35% of total revenue
  → recommended targeted upsell campaigns for Mid-Range customers
```


## ⚙️ How to Run This Project

```bash
# Clone the repository
git clone https://github.com/riteshnandal/airline-revenue-management.git
cd airline-revenue-management

# Set up Python environment
python3 -m venv airline_env
source airline_env/bin/activate        # Mac/Linux
airline_env\Scripts\activate           # Windows

# Install dependencies
pip install -r requirements.txt

# Run notebooks in order
# 1. Python/01_data_cleaning.ipynb
# 2. Python/02_eda_visualisations.ipynb
# 3. Python/03_forecasting_model.ipynb

# SQL setup
# Import SQL/01_create_schema.sql into MySQL Workbench
# Run remaining SQL files in numbered order

# Power BI
# Open Power BI/airline_revenue_dashboard.pbix in Power BI Desktop

# Tableau
# View live at: public.tableau.com/app/profile/riteshnandal
```

---

## Final Summary

## This project was designed to answer five core business questions that an airline revenue management team would typically investigate:

1. Which airlines and routes generate the highest revenue and why?
2. How does ticket pricing vary across stops, duration, and time of day?
3. What seasonal and monthly patterns exist in revenue and demand?
4. How can ticket prices be predicted from operational flight characteristics?
5. What actionable recommendations can improve revenue per available seat?

## 1. Key Business Insights and Recommendations

### Insight 1 — Revenue concentration risk
The top 3 airlines account for approximately 65% of total network revenue. This concentration creates dependency risk.
**Recommendation:** Develop revenue diversification strategy by growing mid-tier airline partnerships and incentivising route expansion from underrepresented carriers.

### Insight 2 — Non-stop route premium
Non-stop flights command 30–35% higher average prices than equivalent 1-stop routes. These routes have strong pricing power.
**Recommendation:** Protect non-stop route capacity from low-cost carrier competition. Apply yield management to maximise revenue on these high-value routes first.

### Insight 3 — Seasonal demand concentration
Revenue peaks sharply in May–June (summer travel season) with prices 20–30% above the annual baseline. October–November shows a secondary peak.
**Recommendation:** Implement dynamic pricing algorithms triggered by seasonal demand signals. Pre-emptively adjust inventory allocation in Q1 for Q2 peak period.

### Insight 4 — Premium segment revenue disproportionality
Premium tickets (above ₹10,000) represent only 18% of flight volume but contribute over 35% of total revenue. Mid-Range is the largest volume segment.
**Recommendation:** Design upsell campaigns targeting Mid-Range customers (₹5,000–₹10,000) — they represent the most accessible revenue uplift opportunity with lowest acquisition cost.

### Insight 5 — Duration as primary price driver
Flight duration is the strongest predictor of ticket price (correlation r=0.68, highest feature importance in ML model). Long-haul routes command the strongest pricing power.
**Recommendation:** Long-haul route pricing should be reviewed quarterly and protected from blanket promotional discounting that erodes margin on the network's most valuable inventory.

## 2. Bullet Points

Use these directly on your resume under this project:

**Data Analyst — Project:**
- Built an end-to-end airline revenue analytics solution processing 10,000+ flight records using Excel, SQL, Python, and Power BI, delivering actionable pricing and route strategy insights
- Engineered 12 new analytical features from raw flight data including duration parsing, time-of-day segmentation, and price band classification using Python pandas
- Wrote 10 optimised SQL queries including window functions (RANK, SUM OVER, ROWS BETWEEN) to analyse airline market share, route revenue, and monthly pricing trends
- Developed a Random Forest price prediction model achieving R² of 0.64 and MAE of ₹1,565, identifying flight duration and airline as the primary ticket price drivers
- Designed a 3-page interactive Power BI dashboard with 11 DAX measures including MoM Growth, Airline Market Share, and dynamic Top Airline/Route cards
- Identified that Premium segment tickets (18% of volume) contribute 35% of total revenue, recommending targeted upsell campaigns for Mid-Range customers

---

## 3. Project Links

| Resource | Link |
|----------|------|
| GitHub Repository | https://github.com/riteshnandal/airline-revenue-management |
| Tableau Public Dashboard | https://public.tableau.com/app/profile/ritesh.kumar8399/viz/AirlineRevenueDashboard_17837825187510/AirlineRevenueDashboard |
| LinkedIn Profile | linkedin.com/in/ritesh-kumar-5a8655262|

---

*Ritesh Kumar — Data Analytics Portfolio Project*
*B.Com → MSc Data Science, Chandigarh University*
*Open to: Data Analyst · MIS Executive · Reporting Analyst · Business Analyst*
*GitHub: github.com/riteshnandal · LinkedIn: linkedin.com/in/ritesh-kumar-5a8655261*


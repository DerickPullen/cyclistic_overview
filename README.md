Cyclistic Bike-Share Case Study (Sep 2024 – Aug 2025)

Business Task

Cyclistic, a Chicago-based bike-share company, wants to grow by turning more casual riders (single/day-pass users) into annual members.
The question I explored was: How do annual members and casual riders use Cyclistic bikes differently?

Project Setup

Data Source: 12 months of Divvy/Cyclistic trip data (Sep 2024 – Aug 2025).

Storage & Processing: Data stored in Google Cloud Storage (GCS) → cleaned and aggregated in BigQuery.

Exports for Tableau: Key summary tables exported as CSVs (agg_kpis, agg_monthly, agg_hour_day, agg_hour_profile, agg_bike_type).

Visualization: Dashboards built in Tableau Public.

Cleaning & Processing Steps

Removed nulls and invalid rides (end before start).

Filtered out rides shorter than 1 min or longer than 24 hrs.

Added calculated columns:

ride_length_min (trip duration in minutes)

day_of_week (1=Sunday … 7=Saturday)

hour_of_day (0–23)

is_weekend (true/false)

yyyymm (year-month).

Built aggregated summary tables for KPIs, ride patterns, and bike type mix.

🛠️ Cleaning & Processing Steps

Removed nulls and invalid rides (end before start).

Filtered out rides shorter than 1 min or longer than 24 hrs.

Added calculated columns:

ride_length_min (trip duration in minutes)

day_of_week (1=Sunday … 7=Saturday)

hour_of_day (0–23)

is_weekend (true/false)

yyyymm (year-month).

Built aggregated summary tables for KPIs, ride patterns, and bike type mix.

📊 Key Findings

Usage Volume

Members: ~3.5M rides (64%)

Casual: ~2.0M rides (36%)

Trip Length

Members: Avg = 11.5 min

Casual: Avg = 19.6 min (~70% longer)

Time of Day

Members: Strong AM/PM commute peaks (7–9 am, 4–6 pm).

Casuals: More midday/afternoon and weekend rides.

Weekday vs Weekend

Members: 76% weekday, 24% weekend

Casuals: 62% weekday, 38% weekend

Bike Type Preferences

Members: Classic + e-bikes dominate

Casuals: Higher reliance on e-bikes & scooters

Visualizations (Tableau Public)

Screenshots below, live dashboards linked:

- https://public.tableau.com/app/profile/derick.pullen/viz/CyclisticKPIs/Dashboard1

- https://public.tableau.com/app/profile/derick.pullen/viz/CyclisticCharts_17582056906270/CyclisticOverview2

Recommendations

Weekend Rider Conversion

Offer weekend-to-membership promotions (e.g., “Ride 3 weekends free → apply credit toward annual pass”).

Commuter-Focused Messaging

Target professionals with digital ads highlighting cost savings & convenience of weekday commuting.

E-Bike Incentives

Provide e-bike credits or upgrades for new members, appealing to casual riders who already favor e-bikes.

Weekend Rider Conversion

Offer weekend-to-membership promotions (e.g., “Ride 3 weekends free → apply credit toward annual pass”).

Commuter-Focused Messaging

Target professionals with digital ads highlighting cost savings & convenience of weekday commuting.

E-Bike Incentives

Provide e-bike credits or upgrades for new members, appealing to casual riders who already favor e-bikes.

👤 About This Project

Analyst: Derick Pullen

Tools used: BigQuery, Google Cloud Storage, Tableau Public, Excel/Sheets (light checks)

Goal: Demonstrate full data analysis workflow (Ask → Prepare → Process → Analyze → Share → Act).
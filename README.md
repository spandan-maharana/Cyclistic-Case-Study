# Cyclistic-Case-Study
Bike-share analysis to identify behavioral differences between casual and member users and uncover data-driven conversion strategies using Python, SQL, and Power BI.

🚴 Cyclistic Bike-Share Analysis

📌 Business Problem

Cyclistic, a bike-share company, wants to understand how to convert casual riders into annual members.

The objective of this analysis is to identify key behavioral differences between casual users and members, and uncover actionable insights to support conversion strategies.

⸻

🎯 Key Questions
	•	How do casual riders and members differ in their usage patterns?
	•	When do users ride (hourly, daily, seasonal trends)?
	•	How long do they ride?
	•	Which segment of casual users shows potential for conversion?

⸻

📊 Dataset
	•	Source: Divvy Trip Data (2020–2026)
	•	Period analyzed: March 2025 – February 2026
	•	Data includes:
	•	Ride timestamps
	•	Station information
	•	Ride duration
	•	User type (casual vs member)

⸻

🛠️ Tools & Technologies
	•	Python → Data cleaning & transformation
	•	PostgreSQL → Data modeling & analysis
	•	Power BI → Dashboard & visualization

⸻

🔄 Data Processing
	•	Combined multiple monthly datasets (~1.1GB)
	•	Cleaned missing and inconsistent values
	•	Created new features:
	•	ride_length (minutes)
	•	day_of_week
	•	month
	•	hour
	•	Aggregated data into summary tables using SQL

⸻

📈 Key Insights

1. Usage Behavior
	•	Members generate nearly 2x more rides → strong repeat usage
	•	Casual riders take longer trips (~22 mins vs ~12 mins) → leisure-driven

2. Time-Based Patterns
	•	Members peak during commute hours (8 AM, 5–6 PM)
	•	Casual riders are more active mid-day and weekends

3. Seasonal Trends
	•	Ride demand peaks in summer months
	•	Significant drop during winter

4. Conversion Opportunity

A segment of casual riders shows member-like behavior:
	•	Frequent weekday usage
	•	Shorter ride durations

👉 This group represents a high-potential conversion segment

⸻

💡 Business Recommendations
	•	Target casual riders with weekday + short-trip behavior
	•	Offer commuter-focused membership plans
	•	Run seasonal campaigns during high-demand months
	•	Avoid broad targeting — focus on behavioral segmentation

⸻

📊 Dashboard

Power BI dashboard includes:
	•	Total rides & user split
	•	Average ride duration
	•	Weekly & hourly usage patterns
	•	Seasonal trends
	•	Ride length segmentation

  📁 Repository Structure
  📦 Cyclistic-Analysis
 ┣ 📂 BI Report
 ┣ 📂 data
 ┣ 📂 notebook
 ┣ 📂 Power BI datasets 
 ┣ 📂 sql analysis
 ┣ 📜 README.md

🚀 Outcome

This project demonstrates how data can be used not just for reporting, but for driving business decisions and growth strategies.

⸻

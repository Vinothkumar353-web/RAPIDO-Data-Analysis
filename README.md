📊 Rapido Rides Data Analysis – Bangalore

This project analyzes over 50,000 Rapido ride records from Bangalore to uncover actionable insights related to customer behavior, peak demand patterns, high–value routes, pricing trends, and operational performance. The analysis pipeline includes Python for data cleaning, MySQL for structured querying, and Power BI for interactive visualization.

🚀 Project Overview

The goal of this project is to understand how users interact with Rapido services across Bangalore, identify high-performing routes, analyze revenue drivers, and uncover opportunities to optimize operations. The dashboard highlights key metrics such as total rides, distance traveled, revenue, duration, payment method trends, and vehicle-type performance.

📁 Dataset Summary

The dataset includes the following fields:

Vehicle_Type – Bike, Auto, Cab Economy, Parcel, etc.

Date – Ride date

Time – Ride start time

Ride_Status – Completed, cancelled, or no-show

Source & Destination – Route information

Duration – Total ride duration

Ride_ID – Unique ride identifier

Distance – Distance travelled

Ride_Charge – Base fare

Extra_Charges – Surge, waiting charges, taxes

Total_Fare – Amount paid by customer

Payment_Method – Amazon Pay, Paytm, GPay, cash, etc.

After cleaning, the dataset was standardized for analysis and imported into MySQL and Power BI.

🧹 Data Cleaning & Preparation

The data was cleaned using Python (Pandas) with the following steps:

Removed microseconds and standardized time format

Converted all date and time fields to proper datatypes

Renamed inconsistent columns

Imputed missing values using median (numeric fields) and mode (categorical fields)

Standardized vehicle type categories

Checked for duplicates and ensured data integrity

The cleaned dataset was then uploaded to MySQL for further analysis.

🗄 SQL Analysis Performed

A series of SQL queries were used to understand:

Revenue by vehicle type

Highest-earning routes

Peak ride hours

Daily/weekly demand patterns

Ride duration and distance distributions

Payment method usage

Cancellation trends

Extra charges contribution

Customer routing patterns across Bangalore

Monthly and daily revenue growth

These insights form the foundation of the Power BI dashboard.

📊 Power BI Dashboard Highlights

The interactive Power BI dashboard includes:

Key Metrics (KPIs)

Total Rides

Total Revenue

Total Distance Travelled

Total Duration

Additional Charges Collected

Average Revenue per Ride

Visualizations

Ride count by vehicle type

Revenue by payment method

Sum of duration by vehicle type

Daily and monthly revenue trends

Total fare by vehicle type and payment method

Route-level revenue contribution

Ride status segmentation

High-demand pickup/drop locations

Additional charges impact on total fare

The dashboard uses a clean yellow-themed layout inspired by Rapido branding.

💡 Key Insights

Koramangala → Electronic City is the highest-earning route (~₹145,000).

Airport and tech-park routes generate most of the high-value rides (>₹1,000).

Peak demand occurs during office hours (7–11 AM, 5–8 PM).

Bike rides contribute the highest frequency, while Auto rides contribute a higher average revenue per trip.

UPI payments dominate, while cash payments show higher cancellation rates.

Extra charges significantly increase revenue during traffic-heavy periods.

Fast-moving corridors like HSR ↔ Koramangala lead to higher driver productivity.

🧩 Business Recommendations

Increase driver supply during peak hours and in high-demand zones like Koramangala, Indiranagar, HSR, and Whitefield.

Promote digital payments through cashback incentives to reduce cancellations and speed up settlements.

Improve route optimization, especially for Whitefield ↔ MG Road and Electronic City routes that experience long traffic delays.

Launch subscription packs or loyalty plans for frequent commuters, especially IT hub users.

Encourage drivers to operate high-revenue corridors with incentives or premium bonuses.

Create dynamic pricing strategies to boost low-demand time slots.

Implement targeted promotions for new, high-frequency, and dormant users.

🛠 Tools & Technologies Used

Python – Data cleaning & preprocessing

MySQL – Structured queries & business insights

Power BI – Interactive visualizations & dashboards

Excel – Initial data checks and formatting

GitHub – Version control & documentation

📌 Final Output

The final deliverables include:

Fully cleaned dataset

MySQL SQL scripts for analysis

Interactive Power BI dashboard

Insights & business recommendations document

This project demonstrates strong skills in data cleaning, SQL analytics, data modeling, business insight generation, and dashboard design.

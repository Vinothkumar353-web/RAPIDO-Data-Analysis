-- 1. Create database
CREATE DATABASE IF NOT EXISTS Rapido_db;
USE Rapido_db;

-- 2. Create table
CREATE TABLE IF NOT EXISTS rapido_rides (
    ride_id VARCHAR(50) PRIMARY KEY,
    vehicle_type VARCHAR(50),
    date DATE,
    time TIME,
    ride_status VARCHAR(20),
    source VARCHAR(255),
    destination VARCHAR(255),
    duration INT,
    distance FLOAT,
    ride_charge FLOAT,
    extra_charges FLOAT,
    total_fare FLOAT,
    payment_method VARCHAR(50)
);

# 1) What is the total revenue generated per vehicle_type ?

select vehicle_type,round(sum(total_fare),0) as total_revenue from rapido_rides
group by vehicle_type
order by vehicle_type;

# 2) What is the total revenue generated per payment_method ?

select payment_method,round(sum(total_fare),0) as total_Payment_revenue from rapido_rides
group by payment_method
order by payment_method;

-- 3) How many rides are completed per day of the week?

SELECT DAYNAME(date) AS day, COUNT(*) AS total_rides
FROM rapido_rides
WHERE ride_status='completed'
GROUP BY DAYNAME(date)
ORDER BY total_rides DESC;

-- 4) What is the average ride distance and duration per vehicle_type?

select vehicle_type,round(avg(distance),0) as Avg_ride_distance ,round(avg(duration),0) as Avg_ride_duration from rapido_rides
group by vehicle_type;

-- 5 )During which hour of the day are rides most frequently booked?
SELECT HOUR(time) AS hour, COUNT(*) AS total_rides
FROM rapido_rides
GROUP BY HOUR(time)
ORDER BY total_rides DESC;

-- 6) Which source → destination routes generate the highest total fare?

SELECT source, destination, round(SUM(total_fare),0) AS total_revenue
FROM rapido_rides
GROUP BY source, destination
ORDER BY total_revenue DESC
LIMIT 10;

--  7) What is the distribution of payment methods used by customers?

select payment_method,count(*) as Total_rides, round(SUM(total_fare),0) AS Revenue from rapido_rides
group by payment_method
order by Revenue desc;

-- 8) What percentage of rides have a status other than completed per vehicle_type?
 
 SELECT vehicle_type,
       COUNT(*) AS total_rides,
       SUM(CASE WHEN ride_status != 'completed' THEN 1 ELSE 0 END) AS failed_rides,
       ROUND(SUM(CASE WHEN ride_status != 'completed' THEN 1 ELSE 0 END)/COUNT(*)*100, 2) AS failure_percentage
FROM rapido_rides
GROUP BY vehicle_type;


-- 9) How much additional revenue comes from extra_charges per vehicle_type?

SELECT vehicle_type, round(SUM(extra_charges),2) AS total_extra_charges, round(AVG(extra_charges),2) AS avg_extra_charge
FROM rapido_rides
GROUP BY vehicle_type;


-- 10) Which rides are high-value (e.g., total_fare > 1000) and which routes generate these?

SELECT source, destination,
       COUNT(*) AS high_value_rides,
       ROUND(SUM(total_fare),0) AS total_revenue
FROM rapido_rides
WHERE total_fare > 1000
GROUP BY source, destination
ORDER BY total_revenue DESC
LIMIT 10;



-- 11) What is the average fare per km and per minute for each vehicle_type?

SELECT vehicle_type,
       ROUND(AVG(total_fare/distance),2) AS fare_per_km,
       ROUND(AVG(total_fare/duration),2) AS fare_per_min
FROM rapido_rides
GROUP BY vehicle_type;



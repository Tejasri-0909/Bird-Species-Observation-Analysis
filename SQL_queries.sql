-- =========================================
-- Bird Species Observation Analysis SQL
-- =========================================

-- 1. Total number of observations
SELECT COUNT(*) AS Total_Observations
FROM bird_data;

-- 2. Total number of unique species
SELECT COUNT(DISTINCT Scientific_Name) AS Total_Species
FROM bird_data;

-- 3. Observations by habitat
SELECT Habitat, COUNT(*) AS Total_Observations
FROM bird_data
GROUP BY Habitat;

-- 4. Top 10 bird species
SELECT Common_Name, COUNT(*) AS Observation_Count
FROM bird_data
GROUP BY Common_Name
ORDER BY Observation_Count DESC
LIMIT 10;

-- 5. Monthly observation trend
SELECT Month, COUNT(*) AS Observations
FROM bird_data
GROUP BY Month
ORDER BY Month;

-- 6. Observation method distribution
SELECT ID_Method, COUNT(*) AS Count
FROM bird_data
GROUP BY ID_Method;

-- 7. At-risk species count
SELECT PIF_Watchlist_Status, COUNT(*) AS Count
FROM bird_data
GROUP BY PIF_Watchlist_Status;

-- 8. Average temperature and humidity
SELECT 
    AVG(Temperature) AS Avg_Temperature,
    AVG(Humidity) AS Avg_Humidity
FROM bird_data;

-- 9. Observations by location type
SELECT Location_Type, COUNT(*) AS Observations
FROM bird_data
GROUP BY Location_Type;

-- 10. Top observers
SELECT Observer, COUNT(*) AS Observations
FROM bird_data
GROUP BY Observer
ORDER BY Observations DESC
LIMIT 10;
--Query 1: To find the total number of restaurants in each city
SELECT City, COUNT(*) AS total_restaurants
FROM zomato
GROUP BY City
ORDER BY total_restaurants DESC;

-- Query 2: Average Rating by City
SELECT City, AVG(Avg_Rating_Restaurant) AS avg_rating
FROM zomato
GROUP BY City
ORDER BY avg_rating DESC;;

-- Query 3: Most Popular Cuisines
SELECT Cuisine, COUNT(*) AS total
FROM zomato
GROUP BY Cuisine
ORDER BY total DESC;

--Query 4: Average Price by Cuisine
SELECT Cuisine, AVG(Avg_Price_Cuisine) AS avg_price
FROM zomato
GROUP BY Cuisine
ORDER BY avg_price DESC;

--Query 5: Top 10 Restaurants by Rating
SELECT Restaurant_Name, City, Avg_Rating_Restaurant
FROM zomato
ORDER BY Avg_Rating_Restaurant DESC
LIMIT 10;

--Query 6: Expensive vs Affordable Restaurants
SELECT Is_Expensive, COUNT(*) AS total
FROM zomato
GROUP BY Is_Expensive;

--Query 7: Price vs Rating Analysis
SELECT Avg_Rating_Restaurant, AVG(Avg_Price_Restaurant) AS avg_price
FROM zomato
GROUP BY Avg_Rating_Restaurant
ORDER BY Avg_Rating_Restaurant;

--Query 8: Cost Range Distribution
SELECT `Cost Range`, COUNT(*) AS total
FROM zomato
GROUP BY `Cost Range`;






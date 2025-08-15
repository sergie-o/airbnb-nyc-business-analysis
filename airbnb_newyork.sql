--1)Which neighbourhood group commands the highest average price?

SELECT 
    neighbourhood_group,
    COUNT(*) AS total_listings,
    ROUND(AVG(price), 2) AS avg_price
FROM airbnb_nyc_cleaned
WHERE price BETWEEN 10 AND 500
GROUP BY neighbourhood_group
ORDER BY avg_price DESC;


--Which room type has the highest average price?
SELECT 
    room_type,
    COUNT(*) AS total_listings,
    ROUND(AVG(price), 2) AS avg_price
FROM airbnb_nyc_cleaned
WHERE price BETWEEN 10 AND 500
GROUP BY room_type
ORDER BY avg_price DESC;

--Question: Does availability throughout the year influence price?
SELECT
    CASE
        WHEN availability_365 = 0 THEN 'No availability'
        WHEN availability_365 BETWEEN 1 AND 100 THEN 'Low (1–100)'
        WHEN availability_365 BETWEEN 101 AND 200 THEN 'Medium (101–200)'
        WHEN availability_365 BETWEEN 201 AND 364 THEN 'High (201–364)'
        WHEN availability_365 = 365 THEN 'Full Year (365)'
    END AS availability_category,
    COUNT(*) AS total_listings,
    ROUND(AVG(price), 2) AS avg_price
FROM airbnb_nyc_cleaned
WHERE price BETWEEN 10 AND 500
GROUP BY availability_category
ORDER BY avg_price DESC;

--Which combination of neighbourhood group and room type is most expensive on average?
SELECT 
    neighbourhood_group,
    room_type,
    COUNT(*) AS total_listings,
    ROUND(AVG(price), 2) AS avg_price
FROM airbnb_nyc_cleaned
WHERE price BETWEEN 10 AND 500
GROUP BY neighbourhood_group, room_type
ORDER BY avg_price DESC;

--Which neighbourhoods have the highest average prices?
SELECT 
    neighbourhood_group,
    neighbourhood,
    COUNT(*) AS total_listings,
    ROUND(AVG(price), 2) AS avg_price
FROM airbnb_nyc_cleaned
WHERE price BETWEEN 10 AND 500
GROUP BY neighbourhood_group, neighbourhood
ORDER BY avg_price DESC
LIMIT 10;

--Which borough has the most Airbnb listings?
SELECT 
    neighbourhood_group,
    COUNT(*) AS total_listings
FROM airbnb_nyc_cleaned
GROUP BY neighbourhood_group
ORDER BY total_listings DESC;

--Which hosts have the most listings?
SELECT 
    host_id,
    host_name,
    COUNT(*) AS listings_count
FROM airbnb_nyc_cleaned
GROUP BY host_id, host_name
ORDER BY listings_count DESC
LIMIT 10;

--Which neighbourhood group has the most active listings (in terms of reviews per month)?
SELECT 
    neighbourhood_group,
    ROUND(AVG(reviews_per_month), 2) AS avg_reviews_per_month
FROM airbnb_nyc_cleaned
WHERE reviews_per_month IS NOT NULL
GROUP BY neighbourhood_group
ORDER BY avg_reviews_per_month DESC;

-- Are high-availability listings priced differently from low-availability ones?
SELECT
    CASE
        WHEN availability_365 >= 200 THEN 'High Availability'
        ELSE 'Low Availability'
    END AS availability_category,
    COUNT(*) AS total_listings,
    ROUND(AVG(price), 2) AS avg_price
FROM airbnb_nyc_cleaned
WHERE price BETWEEN 10 AND 500
GROUP BY availability_category;


--What is the average price of listings in each neighbourhood group?
SELECT 
    neighbourhood_group,
    ROUND(AVG(price), 2) AS avg_price
FROM airbnb_nyc_cleaned
GROUP BY neighbourhood_group
ORDER BY avg_price DESC;


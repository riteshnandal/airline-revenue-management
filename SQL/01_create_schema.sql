CREATE DATABASE airline_project;
USE airline_project;
SELECT DATABASE();
CREATE TABLE flights (
    flight_id INT AUTO_INCREMENT PRIMARY KEY,
    airline VARCHAR(100),
    date_of_journey DATE,
    source VARCHAR(50),
    destination VARCHAR(50),
    route VARCHAR(255),
    dep_time VARCHAR(20),
    arrival_time VARCHAR(20),
    duration VARCHAR(50),
    total_stops VARCHAR(20),
    additional_info VARCHAR(100),
    price DECIMAL(10,2),
    revenue DECIMAL(10,2)
);
SELECT DATABASE();
SHOW GLOBAL VARIABLES LIKE 'local_infile';
LOAD DATA LOCAL INFILE '/Users/apple/Documents/GitHub/airline-revenue-management/flights_clean.csv'
INTO TABLE flights
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(airline, date_of_journey, source, destination, route,
 dep_time, arrival_time, duration, total_stops,
 additional_info, price, revenue);
SELECT * FROM flights LIMIT 10;

select * from price limit 10; 
SELECT airline, SUM(revenue) FROM flights GROUP BY airline;
SELECT route, AVG(price) FROM flights GROUP BY route;
SELECT total_stops, AVG(price)
FROM flights
GROUP BY total_stops;
SELECT 
    destination, COUNT(*)
FROM
    flights
GROUP BY destination;
SELECT destination, SUM(price) AS revenue_generated
FROM flights
GROUP BY destination
ORDER BY revenue_generated DESC;

SELECT airline, route, price, COUNT(*)
FROM flights
GROUP BY airline, route, price
HAVING COUNT(*) > 1;
DELETE FROM flights
WHERE price > 50000;
SET SQL_SAFE_UPDATES = 0;

DELETE FROM flights
WHERE price > 50000;

SET SQL_SAFE_UPDATES = 1;

SELECT 
AVG(price) AS avg_price,
MIN(price) AS min_price,
MAX(price) AS max_price
FROM flights;

SELECT price
FROM flights
ORDER BY price
LIMIT 100;

UPDATE flights
SET price = (
  SELECT avg_price 
  FROM (SELECT AVG(price) AS avg_price FROM flights) x
)
WHERE price IS NULL;

SET SQL_SAFE_UPDATES = 0;

UPDATE flights
SET price = (
  SELECT avg_price 
  FROM (SELECT AVG(price) AS avg_price FROM flights) x
)
WHERE price IS NULL;

UPDATE flights
SET route = 'Unknown'
WHERE route IS NULL;

SET SQL_SAFE_UPDATES = 1;

SELECT airline, SUM(revenue) AS total_revenue
FROM flights
GROUP BY airline
ORDER BY total_revenue DESC;

SELECT destination, COUNT(*) AS total_bookings
FROM flights
GROUP BY destination
ORDER BY total_bookings DESC;

SELECT airline, AVG(price) AS avg_ticket_price
FROM flights
GROUP BY airline
ORDER BY avg_ticket_price DESC;

SELECT total_stops, AVG(price) AS avg_price
FROM flights
GROUP BY total_stops;

SET SQL_SAFE_UPDATES = 0;

UPDATE flights
SET total_stops = 'non-stop'
WHERE route is null;

SET SQL_SAFE_UPDATES = 1;

SELECT route, SUM(revenue) AS route_revenue
FROM flights
GROUP BY route
ORDER BY route_revenue DESC
LIMIT 10;
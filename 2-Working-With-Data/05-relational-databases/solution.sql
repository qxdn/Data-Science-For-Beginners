-- SQLite
-- all city names in the Cities table
SELECT city
FROM Cities;

-- all cities in Ireland in the Cities table
SELECT city
FROM Cities
WHERE country = 'Ireland';

-- all airport names with their city and country
SELECT Airports.name,
    Cities.city,
    Cities.country
FROM Airports 
    INNER JOIN Cities ON Cities.id = Airports.city_id;

-- all airports in London, United Kingdom
SELECT Airports.name
FROM Airports 
    INNER JOIN Cities ON Cities.id = Airports.city_id
WHERE Cities.city = 'London' AND Cities.country = 'United Kingdom';
-- How many entries in the database are from Africa?
SELECT COUNT(*) FROM countries
WHERE continent = 'Africa';

-- How many countries have the word "The" in their name?
SELECT COUNT(name) FROM countries
WHERE name LIKE "%The%";
-- What is the average population of countries in South America in 2003?
SELECT countries.name, ROUND(AVG(population_years.population), 2) AS avg_pop
FROM countries
CROSS JOIN population_years
    ON population_years.country_id = countries.id
WHERE countries.continent = 'South America'
AND population_years.year = 2003
GROUP BY countries.name;

-- What is the average population of Poland during the time period covered by this dataset?
SELECT countries.name, ROUND(AVG(population_years.population),2) AS avg_pop
FROM countries
CROSS JOIN population_years
    ON population_years.country_id = countries.id
WHERE countries.name = 'Poland'; 
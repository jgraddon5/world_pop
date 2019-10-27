-- What was the total population of Oceania in 2005?
SELECT countries.continent, COUNT(population_years.population) 
FROM countries
CROSS JOIN population_years
    ON population_years.country_id = countries.id
WHERE countries.continent = 'Oceania'
AND population_years.year = 2005;  

-- What was the total population of each continent in 2010?
SELECT countries.continent, COUNT(population_years.population) 
FROM countries
CROSS JOIN population_years
    ON population_years.country_id = countries.id
WHERE population_years.year = 2010
GROUP BY countries.continent; 

-- What country had the smallest population in 2007?
SELECT countries.name, MIN(population_years.population)
FROM countries
CROSS JOIN population_years
    ON population_years.country_id = countries.id
WHERE population_years.year = 2007; 
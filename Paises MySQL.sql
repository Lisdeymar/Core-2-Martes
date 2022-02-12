SELECT *
FROM languages;

SELECT *
FROM countries;

SELECT *
FROM cities;
/*1*/
SELECT DISTINCT c.name, l.language, l.percentage
FROM countries c, languages l
WHERE language = 'slovene'
ORDER BY l.percentage DESC;

/*2*/
SELECT c.name AS country, COUNT(t.country_id) AS cities
FROM cities t, countries c
WHERE c.id = t.country_id
GROUP BY t.country_code
ORDER BY COUNT(t.country_id) DESC;

/*3*/
SELECT name AS city, population
FROM cities
WHERE country_id = 136 AND population > 500000
ORDER BY population DESC;

/*4*/
SELECT countries.name AS 'country', l.language, l.percentage
FROM languages l, countries
WHERE l.percentage > 89.0 AND l.country_id = countries.id
ORDER BY l.percentage DESC;

/*5*/
SELECT c.name AS 'country', c.surface_area, c.population
FROM countries c
WHERE c.surface_area < 501 AND c.population > 100000;

/*6*/
SELECT c.name AS 'country', c.government_form, c.capital, c.life_expectancy
FROM countries c
WHERE c.government_form = 'Constitutional Monarchy' AND c.capital > 200 AND c.life_expectancy > 75;


/*7*/

SELECT c.name AS 'country', t.name AS 'city', t.district, t.population
FROM countries c, cities t
WHERE c.id = 9 AND t.district = 'Buenos Aires' AND t.population > 500000;

/*8*/
SELECT region, COUNT(region) AS 'countries'
FROM countries
GROUP BY region
ORDER BY COUNT(region) DESC;







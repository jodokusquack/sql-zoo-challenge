/* 01 */
SELECT name, continent, population FROM world;

/* 02 */
SELECT name FROM world
WHERE population >= 200000000;

/* 03 */
SELECT name, gdp/population AS per_capita_gdp FROM world
WHERE population >= 200000000;

/* 04 */
SELECT name, population/1000000 FROM world
WHERE continent = 'South America';

/* 05 */
SELECT name, population FROM world
WHERE name IN ('France', 'Germany', 'Italy');

/* 06 */
SELECT name FROM world
WHERE name LIKE '%united%';

/* 07 */
SELECT name, population, area FROM world
WHERE area > 3000000 OR population > 250000000;

/* 08 */
SELECT name, population, area FROM world
WHERE area > 3000000 XOR population > 250000000;

/* 09 */
SELECT name, ROUND(population/1000000,2) AS pop_mill, ROUND(gdp/1000000000, 2) AS gdp_per_capita_bill FROM world
WHERE continent = 'South America';

/* 10 */
SELECT name, ROUND(gdp/population, -3) AS gdp FROM world
WHERE gdp > 1000000000000;

/* 11 */
SELECT name, capital FROM world
WHERE LENGTH(name) = LENGTH(capital);

/* 12 */
SELECT name, capital FROM world
WHERE LEFT(name, 1) = LEFT(capital, 1) AND name <> capital;

/* 13 */
SELECT name
   FROM world
WHERE name LIKE '%a%'
  AND name LIKE '%e%'
  AND name LIKE '%i%'
  AND name LIKE '%o%'
  AND name LIKE '%u%'
  AND name NOT LIKE '% %';

/* 01 */
SELECT name FROM world
  WHERE name LIKE 'y%';
  
/* 02 */
SELECT name FROM world
  WHERE name LIKE '%y';
  
/* 03 */
SELECT name FROM world
  WHERE name LIKE '%x%';
  
/* 04 */
SELECT name FROM world
  WHERE name LIKE '%land';
  
/* 05 */
SELECT name FROM world
  WHERE name LIKE 'c%ia';
  
/* 06 */
SELECT name FROM world
  WHERE name LIKE '%oo%';
  
/* 07 */
SELECT name FROM world
  WHERE name LIKE '%a%a%a%';
  
/* 08 */
SELECT name FROM world
 WHERE name LIKE '_t%';
 
/* 09 */
SELECT name FROM world
 WHERE name LIKE '%o__o%';
 
/* 10 */
SELECT name FROM world
 WHERE name LIKE '____';
 
/* 11 */
SELECT name FROM world
 WHERE name LIKE capital;
 
/* 12 */
SELECT name FROM world
 WHERE capital = CONCAT(name, ' City');
 
/* 13 */
SELECT capital, name FROM world
WHERE capital LIKE CONCAT('%', name, '%');

/* 14 */
SELECT capital, name FROM world
WHERE capital LIKE CONCAT(name, '_', '%');

/* 15 */
SELECT name, REPLACE(capital, name, '') FROM world
WHERE capital LIKE CONCAT(name, '_', '%');

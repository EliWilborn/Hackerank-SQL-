-- Query all columns for all American cities in the CITY table with populations larger than 100000. 
-- The CountryCode for America is USA.

Select * 
From City 
Where population > 100000 and Countrycode = 'USA';

-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. 
-- The CountryCode for America is USA.

SELECT NAME FROM CITY WHERE POPULATION >120000 AND COUNTRYCODE = 'USA';

-- Query all columns (attributes) for every row in the CITY table.
-- The CITY table is described as follows: 

Select * 
From CITY;

-- Query all columns for a city in CITY with the ID 1661.
-- The CITY table is described as follows: 

Select * 
From CITY 
Where ID = 1661;

-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

Select *
From CITY 
Where COUNTRYCODE = 'JPN';

-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN. 

Select Name 
From CITY 
Where COUNTRYCODE = 'JPN';

-- Query a list of CITY and STATE from the STATION table. 

Select City, State
From STATION;

-- Query a list of CITY names from STATION for cities that have an even ID number. 
-- Print the results in any order, but exclude duplicates from the answer. 

SELECT DISTINCT(CITY) FROM STATION WHERE MOD(ID,2)=0 ; 

-- Find the difference between the total number of CITY entries in the table  and the number of distinct CITY entries in the table.

SELECT  
   COUNT(CITY) - COUNT(DISTINCT CITY) 
FROM STATION

-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY 
FROM STATION W
HERE CITY 
LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%';

-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. 
-- Your result cannot contain duplicates.

select distinct city
from station
where regexp_like(city, '^[aeiou]{1}.*[aeiou]{1}$', 'i');

-- Query the list of CITY names from STATION that do not start with vowels. 
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY 
FROM STATION 
WHERE LEFT(CITY,1) NOT IN ('A','E','I','O','U') ORDER BY CITY;

-- Query the list of CITY names from STATION that do not end with vowels. 
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY 
FROM STATION WHERE CITY 
NOT LIKE '%a' AND CITY NOT LIKE '%e' AND CITY 
NOT LIKE '%i' AND CITY NOT LIKE '%o' AND CITY NOT LIKE '%u' ;

-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION 
WHERE RIGHT (CITY, 1) NOT IN ('A','E', 'I', 'O', 'U') 
OR LEFT (CITY,1) IN ('A','E', 'I', 'O', 'U');

-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
-- Your result cannot contain duplicates.

select distinct (city) from station where city not Like '[AIOUE]%' or city Not Like '%[AIOUE]';
select distinct (city) from station where city Like '[^AIOUE]%' or city Like '%[^AIOUE]';

-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. 
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY 
FROM STATION WHERE LEFT(CITY,1) NOT IN ('A','E','I','O','U') AND RIGHT(CITY,1) 
NOT IN ('A','E','I','O','U') ORDER BY CITY;

-- Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), 
-- secondary sort them by ascending ID.

SELECT  NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY 
    RIGHT (NAME, 3), ID;
    
    -- Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
    
    SELECT NAME FROM EMPLOYEE
order by NAME;

-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000 per month who have been employees for less than 10 months. 
-- Sort your result by ascending employee_id.

SELECT name FROM Employee WHERE salary>2000 AND months<10 ORDER BY employee_id;

-- Query a count of the number of cities in CITY having a Population larger than 100000

select count(name) from city where population>100000;

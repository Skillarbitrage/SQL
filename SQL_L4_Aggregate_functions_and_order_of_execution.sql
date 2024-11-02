USE supercars_db;

############## Data Aggregation ###################

1. count
2. sum
3. avg
4. min
5. max

-----------------------------------------------------------------------

-- Count

-- count the number of cars in the supercars table

SELECT count(*) FROM supercars;

-- count of cars where price is less than 1000000

SELECT count(*) FROM supercars WHERE price_in_dollars < 1000000;

-----------------------------------------------------------------------


-- Sum

-- find the total weight of all the supercars in the supercars table

SELECT sum(weight) From supercars;

-------------------------------------------------------------------------

-- Avg

-- find the average horsepower of all supercars in the table

SELECT avg(horsepower) FROM supercars;

--------------------------------------------------------------------------

-- Min

-- find the minimium horsepower of all supercars in the table

SELECT min(horsepower) as minimum_HP FROM supercars;

---------------------------------------------------------------------------

-- max

-- find the maximum horsepower of all supercars in the table

SELECT max(horsepower) as minimum_HP FROM supercars;

---------------------------------------------------------------------------

########### Group By #############


-- find the number of supercars for each luxury level

select * from supercars;

SELECT luxury_level, count(*) as number_of_cars FROM supercars 
GROUP BY luxury_level;

---------------------------------------------------------------------------

-- find the average top speed for each make of supercar

SELECT make, avg(top_speed) top_speed FROM supercars 
Group by make;

----------------------------------------------------------------------------


########### Having ################

-- find all the luxury levels that have an average top speed greater than 220.

SELECT luxury_level, avg(top_speed) average_top_speed 
FROM supercars
Group BY luxury_level
HAVING average_top_speed > 220 ;

-----------------------------------------------------------------------------


-- find all the luxury levels that have an average top speed greater than 220 and at least 2 cars.

SELECT luxury_level, avg(top_speed) average_top_speed 
FROM supercars
Group BY luxury_level
having average_top_speed > 220 AND count(*) > 2 ;

Select luxury_level , count(*) From supercars Group BY luxury_level;

########### Order of Execution ###########

1. FROM
2. JOIN
3. WHERE
4. GROUP BY
5. HAVING
6. SELECT
6. ORDER BY
7. LIMIT



########## ORDER BY , LIMIT #######################

Select model, price_in_dollars from supercars  order by price_in_dollars ASC LIMIT 5;




########## CASE WHEN-THEN ################

SELECT model, horsepower,
   CASE
      WHEN horsepower < 500 THEN 'Low'
      WHEN horsepower >= 500 AND horsepower < 750 THEN 'Medium'
      WHEN horsepower >= 750 THEN 'High'
   END AS horsepower_category
FROM supercars;
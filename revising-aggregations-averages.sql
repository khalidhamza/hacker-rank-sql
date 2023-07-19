/*
    Problem (Revising Aggregations - Averages)

    Query the average population of all cities in CITY where District is California.
*/

SELECT ROUND(AVG(POPULATION), 3) FROM CITY WHERE DISTRICT = 'California';
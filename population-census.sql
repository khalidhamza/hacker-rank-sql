/*
    Problem (Population Census)

    Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

    Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

SELECT SUM(C.POPULATION) FROM CITY C INNER JOIN COUNTRY CO ON (C.COUNTRYCODE = CO.CODE) WHERE CO.CONTINENT = 'Asia';
/*
    Problem (Draw The Triangle 1)

    P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
*/

SET @TEMP:=21; 
SELECT REPEAT('* ', @TEMP:= @TEMP - 1) FROM INFORMATION_SCHEMA.TABLES;
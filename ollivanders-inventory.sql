/*
    Problem (Ollivander's Inventory)
    
    Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.
    Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age. Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.
*/
SELECT 
Wands.id, Wands_Property.age, Wands.coins_needed, Wands.power 
FROM Wands 
INNER JOIN Wands_Property ON (Wands.code = Wands_Property.code) 
WHERE Wands_Property.is_evil = 0 
AND Wands.coins_needed = (
    SELECT MIN(W.coins_needed) 
    FROM Wands W
    INNER JOIN Wands_Property WP ON (W.code = WP.code)
    WHERE WP.is_evil = 0 
    AND WP.age = Wands_Property.age
    AND W.power= Wands.power 
)
ORDER BY Wands.power DESC, Wands_Property.age DESC;
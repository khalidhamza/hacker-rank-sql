/*
    Problem (Contest Leaderboard)
    You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

    The total score of a hacker is the sum of their maximum scores for all of the challenges. 
    
    Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score.
    If more than one hacker achieved the same total score, 
    then sort the result by ascending hacker_id. Exclude all hackers with a total score of  from your result.
*/
SELECT Hackers.hacker_id, Hackers.name, SUM(temp.max_score) AS total_score FROM
(SELECT 
    S.hacker_id,
    S.challenge_id,
    MAX(S.score) as max_score
    FROM Submissions S 
    GROUP BY S.hacker_id, S.challenge_id 
) AS temp
INNER JOIN Hackers ON (Hackers.hacker_id = temp.hacker_id)
GROUP BY Hackers.hacker_id
HAVING total_score > 0
ORDER BY total_score DESC, Hackers.hacker_id;
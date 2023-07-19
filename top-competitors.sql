/*
    Problem (Top Competitors)

    Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.
*/
SET sql_mode = 'NO_BACKSLASH_ESCAPES';
SELECT H.*
FROM Submissions S
LEFT JOIN Hackers H ON (H.hacker_id = S.hacker_id)
LEFT JOIN Challenges C ON (C.challenge_id = S.challenge_id)
LEFT JOIN Difficulty D ON (D.difficulty_level = C.difficulty_level)
WHERE S.score = D.score
GROUP BY H.hacker_id, H.name HAVING COUNT(*)>1
ORDER BY COUNT(s.submission_id) DESC, hacker_id
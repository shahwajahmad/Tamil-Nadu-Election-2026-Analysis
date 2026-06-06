-- Analysis: Top 10 Highest Vote-Getting Candidates
-- Objective: Rank candidates based on total votes received
-- Purpose: Identify the most popular candidates in the election

SELECT
    candidate,
    party,
    constituency,
    votes
FROM winners_2026
ORDER BY votes DESC
LIMIT 10;

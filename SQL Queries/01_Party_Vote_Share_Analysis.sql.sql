-- Analysis: Party Vote Share Analysis (2026)
-- Objective: Analyze the total votes received by each political party
-- Purpose: Identify vote share distribution and party-level voter support

SELECT
    party,
    SUM(votes) AS total_votes,
    ROUND(
        SUM(votes) * 100.0 /
        (SELECT SUM(votes) FROM tn_2026_results),
        2
    ) AS vote_share_pct
FROM tn_2026_results
GROUP BY party
ORDER BY vote_share_pct DESC;

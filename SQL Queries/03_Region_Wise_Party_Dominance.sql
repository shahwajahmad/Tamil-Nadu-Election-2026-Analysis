-- Analysis: Region-wise Party Dominance
-- Objective: Evaluate party performance across different regions of Tamil Nadu
-- Purpose: Identify regional strongholds and leading political parties

SELECT
    region,
    party,
    COUNT(*) AS seats_won
FROM winners_2026
GROUP BY region, party
ORDER BY region, seats_won DESC;

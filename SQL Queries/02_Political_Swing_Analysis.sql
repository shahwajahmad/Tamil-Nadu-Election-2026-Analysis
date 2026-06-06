-- Analysis: Political Swing Analysis (2021 vs 2026)
-- Objective: Compare party seat performance between the 2021 and 2026 elections
-- Purpose: Identify major gainers, losers, and shifts in political dominance

SELECT
    w2021.party AS party_2021,
    w2026.party AS party_2026,
    COUNT(*) AS constituencies
FROM winners_2021 w2021
JOIN winners_2026 w2026
ON w2021.ac_number = w2026.ac_number
GROUP BY party_2021, party_2026
ORDER BY constituencies DESC;

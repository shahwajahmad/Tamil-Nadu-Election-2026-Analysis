-- Analysis: Region-wise Voter Turnout
-- Objective: Calculate average voter turnout across regions
-- Purpose: Understand regional participation patterns in the election

SELECT
    region,
    ROUND(AVG(turnout),2) AS avg_turnout
FROM tn_2021_results
GROUP BY region
ORDER BY avg_turnout DESC;

SELECT
    region,
    ROUND(AVG(turnout),2) AS avg_turnout
FROM tn_2021_results
GROUP BY region
ORDER BY avg_turnout DESC;
SELECT
    region,
    party,
    COUNT(*) AS seats_won
FROM winners_2026
GROUP BY region, party
ORDER BY region, seats_won DESC;
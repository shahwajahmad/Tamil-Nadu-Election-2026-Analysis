SELECT
    w2021.party AS party_2021,
    w2026.party AS party_2026,
    COUNT(*) AS constituencies
FROM winners_2021 w2021
JOIN winners_2026 w2026
ON w2021.ac_number = w2026.ac_number
GROUP BY party_2021, party_2026
ORDER BY constituencies DESC;
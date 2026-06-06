SELECT
    candidate,
    party,
    constituency,
    votes
FROM winners_2026
ORDER BY votes DESC
LIMIT 10;
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
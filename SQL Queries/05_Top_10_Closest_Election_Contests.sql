WITH ranked AS (
    SELECT *,
           ROW_NUMBER() OVER(
               PARTITION BY ac_number
               ORDER BY votes DESC
           ) rn
    FROM tn_2026_results
)

SELECT
    w.constituency,
    w.candidate AS winner,
    r.candidate AS runner_up,
    w.party AS winner_party,
    r.party AS runner_up_party,
    (w.votes - r.votes) AS margin
FROM ranked w
JOIN ranked r
ON w.ac_number = r.ac_number
WHERE w.rn = 1
AND r.rn = 2
ORDER BY margin ASC
LIMIT 10;
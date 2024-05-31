SELECT DISTINCT
    f1.X,
    f1.Y
FROM
    `functions` AS f1
    JOIN `functions` AS f2 ON f1.X = f2.Y
    AND f1.Y = f2.X
WHERE
    f1.X <= f1.y
GROUP by
    f1.X,
    f1.Y
HAVING
    (
        f1.X = f1.Y
        AND COUNT(*) > 1
    )
    OR f1.X != f1.Y
ORDER by
    f1.X;
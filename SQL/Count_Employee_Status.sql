-- Count of Employment_Status
SELECT Employment_Status, COUNT(*) AS count
FROM HR.Status
GROUP BY Employment_Status; 
SELECT
    Sex,
    COUNT(*) AS Total_Count,
    ROUND((COUNT(*) * 100.0) / SUM(COUNT(*)) OVER (), 2) AS Percentage
FROM HR.Employee
GROUP BY Sex;
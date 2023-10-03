SELECT 
EXTRACT(MONTH FROM Date_of_Hire) AS Hire_Month,
    COUNT(*) AS Hire_Count
FROM Recruitment
GROUP BY Hire_Month
ORDER BY Hire_Count DESC;
SELECT
    CASE
        WHEN Age >= 18 AND Age < 30 THEN '18-29'
        WHEN Age >= 30 AND Age < 40 THEN '30-39'
        WHEN Age >= 40 AND Age < 50 THEN '40-49'
        WHEN Age >= 50 THEN '50+'
        ELSE 'Unknown'
    END AS Age_Group,
    COUNT(*) AS Count_of_Employees
FROM (
    SELECT
        Emp_ID,
        Employee_Name,
        DOB,
        DATEDIFF(CURRENT_DATE, DOB) / 365 AS Age
    FROM Employee
) AS AgeData
GROUP BY Age_Group
ORDER BY Age_Group;







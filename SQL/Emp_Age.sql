SELECT DISTINCT
    Emp_ID,Employee_Name,
    DOB,
    DATEDIFF(CURRENT_DATE, DOB) / 365 AS Age
FROM Employee
ORDER BY AGE;
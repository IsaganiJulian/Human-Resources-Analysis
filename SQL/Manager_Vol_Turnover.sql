SELECT d.Manager_ID,d.Manager_Name, COUNT(s.Employment_Status) as Voluntarily_Turnover_Count
FROM Status s
JOIN Position p ON s.Emp_ID = p.Emp_ID
JOIN Department d ON p.Dept_ID = d.Dept_ID
WHERE s.Employment_Status = 'Voluntarily Terminated'
GROUP BY d.Manager_ID,d.Manager_Name
ORDER BY Voluntarily_Turnover_Count DESC;



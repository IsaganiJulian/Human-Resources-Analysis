SELECT p.Salary, COUNT(s.Employment_Status) as Voluntarily_Turnover_Count
FROM Status s
JOIN Position p on s.Emp_ID = p.Emp_ID
WHERE s.Employment_Status = "Voluntarily Terminated"
GROUP BY p.Salary
ORDER BY p.Salary DESC; 


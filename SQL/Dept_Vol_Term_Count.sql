-- Department Voluntarily Terminated Count
SELECT d.Department_Name, COUNT(s.Employment_Status) as Voluntarily_Terminated_Count
FROM Status s
JOIN Employee e on s.Emp_ID = e.Emp_ID
JOIN Department d on e.Position_ID = d.Position_ID
WHERE Employment_Status = "Voluntarily Terminated"
GROUP BY Department_Name
ORDER BY COUNT(s.Employment_Status) DESC; 
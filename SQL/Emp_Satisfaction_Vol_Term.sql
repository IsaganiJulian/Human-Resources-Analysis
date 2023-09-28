-- Count of Voluntarily Terminated employees ordered by Employment Satisfaction rank
SELECT Employment_Status, Emp_Satisfaction, COUNT(*) as Voluntarily_Terminated_Count
FROM Status 
JOIN Emp_Feedback ON Status.Emp_ID = Emp_Feedback.Emp_ID
WHERE Employment_Status = "Voluntarily Terminated" 
GROUP BY Emp_Satisfaction 
ORDER BY Emp_Satisfaction DESC ; 
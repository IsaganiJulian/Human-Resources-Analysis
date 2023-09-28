-- Count of Voluntarily Terminated employees ordered by Engagement Survey rank
SELECT Employment_Status, Engagement_Survey, COUNT(*) as Voluntarily_Terminated_Count
FROM Status 
JOIN Emp_Feedback ON Status.Emp_ID = Emp_Feedback.Emp_ID
WHERE Employment_Status = "Voluntarily Terminated" 
GROUP BY Engagement_Survey 
ORDER BY Engagement_Survey DESC;





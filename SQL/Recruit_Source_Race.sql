SELECT DISTINCT
r.Recruitment_Source, e.Race_Desc, COUNT(e.Race_Desc) as count,
ROUND((COUNT(*) * 100.0) / SUM(COUNT(*)) OVER (), 2) AS Percentage
FROM Recruitment r
JOIN Employee e on e.Emp_ID=r.Emp_ID
GROUP BY r.Recruitment_Source, e.Race_Desc
ORDER BY COUNT(e.Race_Desc) DESC; 


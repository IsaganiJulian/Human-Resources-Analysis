SELECT Race_Desc, COUNT(Race_Desc) as count,
 ROUND((COUNT(*) * 100.0) / SUM(COUNT(*)) OVER (),6) AS Percentage
FROM Employee
GROUP BY Race_Desc
ORDER BY count DESC; 
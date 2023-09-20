-- Count of Sex Married
SELECT Sex, COUNT(*) as Married
FROM HR.Employee
WHERE Marital_Desc = "Married"
GROUP BY Sex ;
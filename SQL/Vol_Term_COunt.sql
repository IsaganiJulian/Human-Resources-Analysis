-- Count of Voluntarily Terminated Employees
SELECT Employment_Status, COUNT(*) as count
FROM HR.Status
WHERE Employment_Status = "Voluntarily Terminated";

SELECT 
    Term_Month,
    COUNT(*) AS Term_Count
FROM (
    SELECT 
        EXTRACT(MONTH FROM Date_of_Term) AS Term_Month
    FROM Status
    WHERE Date_of_Term IS NOT NULL
    AND Date_of_Term != '0000-00-00' -- Remove the null for individuals with no termination date due to still being active
) AS FilteredData
GROUP BY Term_Month
ORDER BY Term_Count DESC;
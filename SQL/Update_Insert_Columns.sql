-- Create Performance Table
CREATE TABLE Performance (
    Perf_Score_ID INT,
    Emp_ID INT,
    Last_Performance_Review_Date VARCHAR(45),
    Days_Late_Last_30 INT,
    Special_Projects_Count INT,
    Absences INT
    );
-- Insert columns from HR_Analysis to Performance Table
INSERT INTO Performance( Perf_Score_ID, Emp_ID, Last_Performance_Review_Date, Days_Late_Last_30, Special_Projects_Count,Absences)
SELECT  Perf_Score_ID, Emp_ID, Last_Performance_Review_Date, Days_Late_Last_30, Special_Projects_Count, Absences
FROM HR.HR_Analysis;



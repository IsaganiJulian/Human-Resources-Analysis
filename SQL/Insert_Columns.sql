#Insert columns from HR_Analysis to Employee 
INSERT INTO Employee (Emp_ID, Employee_Name,DOB,Sex,Married_ID,Marital_Status_ID,
Gender_ID,Marital_Desc,Citizen_Desc,Race_Desc,Position_ID)
SELECT Emp_ID, Employee_Name,DOB,Sex,Married_ID,Marital_Status_ID,
Gender_ID,Marital_Desc,Citizen_Desc,Race_Desc,Position_ID
FROM HR.HR_Analysis;

-- Insert columns from HR.HR_Analysis to Department
INSERT INTO Department (Dept_ID, Position_ID, Department, Manager_ID, Manager_Name)
SELECT Dept_ID, Position_ID, Department, Manager_ID, Manager_Name
FROM HR.HR_Analysis;

-- Insert columns from HR.HR_Analysis to Emp_Feedback
INSERT INTO Emp_Feedback(Emp_ID, Engagement_Survey, Emp_Satisfaction)
SELECT Emp_ID, Engagement_Survey, Emp_Satisfaction
FROM HR.HR_Analysis;

-- Insert columns from HR.HR_Analysis to Performance
INSERT INTO Performance( Perf_Score_ID, Emp_ID, Last_Performance_Review_Date, Days_Late_Last_30)
SELECT Perf_Score_ID, Emp_ID, Last_Performance_Review_Date, Days_Late_Last_30
FROM HR.HR_Analysis;

-- Insert columns from HR.HR_Anlaysis to Position
INSERT INTO Position (Position_ID, Position, Emp_ID,Salary , Dept_ID)
SELECT Position_ID, Position, Emp_ID,Salary , Dept_ID
FROM HR.HR_Analysis;

-- Insert columns from HR.HR_Anlaysis to Recruitment
INSERT INTO Recruitment (Emp_ID, Recruitment_Source, From_Diversity_Job_Fair_ID, Date_of_Hire, Manager_Name, Manager_ID)
SELECT Emp_ID, Recruitment_Source, From_Diversity_Job_Fair_ID, Date_of_Hire, Manager_Name, Manager_ID
FROM HR.HR_Analysis;

-- Insert columns from HR.HR_Anlaysis to Status
INSERT INTO Status (Emp_Status_ID, Emp_ID, Date_of_Hire, Date_of_Term,Term_Reason,Employment_Status)
SELECT Emp_Status_ID, Emp_ID, Date_of_Hire, Date_of_Term,Term_Reason,Employment_Status
FROM HR.HR_Analysis;






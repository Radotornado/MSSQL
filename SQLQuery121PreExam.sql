-- Employees' Salary
SELECT 
[EmployeeID],
[HireDate],
[Salary],
[BranchID]
FROM [dbo].[Employees] AS e
WHERE e.[HireDate] > '2009-06-15'
AND e.[Salary] > 2000


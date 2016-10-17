-- Employee Accounts
SELECT TOP 5
e.[EmployeeID],
e.[FirstName],
a.[AccountNumber]
FROM [dbo].[Employees] AS e
INNER JOIN [dbo].[EmployeesAccounts] AS ae
ON e.EmployeeID = ae.EmployeeID
INNER JOIN [dbo].[Accounts] AS a
ON a.AccountID = ae.AccountID
WHERE YEAR(a.StartDate) > 2012
ORDER BY e.FirstName DESC
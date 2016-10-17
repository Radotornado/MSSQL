-- Loan Statistics
SElECT 
SUM(l.Amount) AS TotalLoanAmount,
MAX(l.Interest) AS MaxInterest,
MIN(e.Salary) AS MinimumSalary
FROM [dbo].[Employees] AS e
INNER JOIN [dbo].[EmployeesLoans] AS el
ON e.EmployeeID = el.EmployeeID
INNER JOIN [dbo].[Loans] as l
ON l.LoanID = el.LoanID

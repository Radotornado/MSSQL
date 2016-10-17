-- Customers Without Accounts
SElECT TOP 5 c.[CustomerID],  l.[Amount]
FROM [dbo].[Customers] AS c
LEFT OUTER JOIN [dbo].[Loans] AS l
ON c.CustomerID = l.CustomerID
WHERE l.Amount > 
(
SELECT AVG(l.Amount) AS AverageMaleLoan
FROM [dbo].[Customers] AS c
LEFT OUTER JOIN [dbo].[Loans] AS l
ON c.CustomerID = l.CustomerID
WHERE c.Gender = 'm'
)
ORDER BY c.LastName ASC
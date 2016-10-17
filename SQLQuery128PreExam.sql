-- Customers Without Accounts
SElECT c.[CustomerID], c.[Height]
FROM [dbo].[Customers] AS c
LEFT OUTER JOIN [dbo].[Accounts] AS a
ON c.CustomerID = a.CustomerID
WHERE a.AccountID IS NULL
AND c.Height BETWEEN 1.74 AND 2.04
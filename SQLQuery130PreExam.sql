-- Oldest Account
SELECT TOP 1
      c.CustomerID,
	  c.FirstName,
	  a.StartDate
FROM [dbo].[Customers] AS c
INNER JOIN [dbo].[Accounts] AS a
ON c.CustomerID = a.CustomerID
ORDER BY a.StartDate ASC
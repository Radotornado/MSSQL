-- Unite People
SElECT TOP 3 e.FirstName, c.CityName
FROM [dbo].[Employees] AS e
INNER JOIN [dbo].[Branches] AS b
ON e.BranchID = b.BranchID
INNER JOIN [dbo].[Cities] AS c
ON b.CityID = c.CityID
UNION ALL
SElECT TOP 3 cu.FirstName, ci.CityName
FROM [dbo].[Customers] AS cu
INNER JOIN [dbo].[Cities] AS ci
ON cu.CityID = ci.CityID
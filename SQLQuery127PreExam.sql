-- Employee Cities
SElECT c.CityName,
	   b.Name,
	   COUNT(*) AS EmployeesCount
FROM [dbo].[Employees] AS e
INNER JOIN [dbo].[Branches] AS b
ON e.BranchID = b.BranchID
INNER JOIN [dbo].[Cities] AS c
ON b.CityID = c.CityID
WHERE c.CityID NOT IN (4,5)
GROUP BY c.CityName,
         b.Name
HAVING COUNT(*) >= 3
-- Customer City
SELECT 
[CustomerID],
[FirstName],
[LastName],
[Gender],
[CityName]  
  FROM [dbo].[Customers] AS cu
  INNER JOIN [dbo].[Cities] ci
  ON ci.CityID = cu.CityID
  WHERE (cu.LastName LIKE 'Bu%'
    OR cu.FirstName LIKE '%a')
	AND LEN(ci.CityName) >= 8
	ORDER BY cu.CustomerID ASC
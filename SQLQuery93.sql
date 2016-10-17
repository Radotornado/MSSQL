SELECT COUNT(c.CountryCode) FROM [dbo].[Countries] AS c
LEFT JOIN [dbo].[MountainsCountries] AS mc
ON c.CountryCode = mc.CountryCode
WHERE mc.MountainId IS NULL
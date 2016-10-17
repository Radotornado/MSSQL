SELECT TOP 30 C.CountryName, C.Population FROM [dbo].Countries AS C
WHERE C.ContinentCode = 'EU'
ORDER BY C.Population DESC
-- Customer Age
SELECT
[FirstName],
[DateOfBirth] ,
DATEDIFF(YEAR, [DateOfBirth], '2016-01-01') AS Age
FROM [dbo].[Customers] AS c
WHERE DATEDIFF(YEAR, [DateOfBirth], '2016-01-01') BETWEEN 40 AND 50
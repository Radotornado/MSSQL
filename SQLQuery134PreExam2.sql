-- Get users with IPAdress like pattern
SELECT Username, IpAddress 
FROM [dbo].[Users]
WHERE IpAddress LIKE '___.1_%._%.___'
ORDER BY Username ASC
SELECT U.Username, U.IpAddress
FROM [dbo].Users AS U
WHERE U.IpAddress LIKE '___.1_%._%.___'
ORDER BY U.Username ASC
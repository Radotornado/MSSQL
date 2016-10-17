SELECT U.Username, SUBSTRING(U.Email, CHARINDEX('@',U.Email) + 1, LEN(U.Email)) AS "Email Provider" 
FROM [dbo].Users AS U
ORDER BY [Email Provider] ASC, U.Username ASC
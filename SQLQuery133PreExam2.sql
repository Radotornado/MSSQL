-- User Email Providers
SELECT Username, SUBSTRING(Email, CHARINDEX('@',Email) + 1, LEN(Email)) AS "Email Provider" 
FROM [dbo].[Users]
ORDER BY [Email Provider] ASC, USERNAME ASC
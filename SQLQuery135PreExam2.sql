-- Number of Users for Email Provider
SELECT [Email Provider], COUNT(*) AS [Number Of Users] FROM
	(SELECT SUBSTRING(Email, CHARINDEX('@', Email) + 1, LEN(Email)) AS [Email Provider], * FROM Users) AS "Email Provider"
GROUP BY [Email Provider]
ORDER BY COUNT(*) DESC, [Email Provider]
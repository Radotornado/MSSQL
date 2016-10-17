CREATE PROCEDURE usp_GetHoldersFullName AS
BEGIN
	SELECT ah.FirstName + ' ' + ah.LastName FROM dbo.AccountHolders AS ah
END
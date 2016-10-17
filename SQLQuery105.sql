CREATE PROC usp_WithdrawMoney (@accountId INT, @moneyAmount MONEY)
AS
UPDATE Accounts
SET Balance -= @moneyAmount
WHERE Id = @accountId
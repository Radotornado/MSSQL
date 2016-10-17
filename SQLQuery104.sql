CREATE PROC usp_DepositMoney @AccountId INT, @moneyAmount MONEY
AS
UPDATE Accounts
SET Balance += @moneyAmount
WHERE Id = @AccountId
CREATE FUNCTION ufn_CalculateFutureValue (@initial MONEY, @yearlyInterest FLOAT, @years FLOAT)
RETURNS MONEY
AS
BEGIN
	RETURN @initial * POWER((1 + @yearlyInterest), @years)
END
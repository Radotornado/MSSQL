RETURNS TABLE
AS
RETURN
SELECT SumCash FROM
	(SELECT GameId, SUM(Cash) AS SumCash FROM
		(SELECT GameId, Cash, ROW_NUMBER() OVER (ORDER BY Cash DESC) as [Row]
		FROM UsersGames
		JOIN Games ON
		Games.Id = UsersGames.GameId
		WHERE Games.Name = @gameName) AS UsersGamesAndRows
	WHERE [Row] % 2 = 1
	GROUP BY GameId) AS GameIdsAndCashSums
GO
--DML

INSERT INTO [dbo].[DepositTypes](DepositTypeID, Name)
VALUES
(1,'Time Deposit'),
(2,'Call Deposit'),
(3,'Free Deposit')

INSERT INTO [dbo].[Deposits](Amount, StartDate, EndDate, DepositTypeID, CustomerID)
SELECT CASE 
			WHEN c.[DateOfBirth] > '1980-01-01' THEN 1000
			ELSE 1500
	   END
	   + 
	   CASE
			WHEN c.[Gender] = 'm' THEN 100
			WHEN c.[Gender] = 'f' THEN 200
	   END AS Amount,
	   GETDATE() AS StartDate,
	   NULL As EndDate,
	   CASE
			WHEN c.CustomerID > 15 THEN 3
			WHEN c.CustomerID % 2 = 0 THEN 2
			WHEN c.CustomerID % 2 = 1 THEN 1
	   END AS DepositTypeID,
	   c.CustomerID
 FROM [dbo].[Customers] AS c
 WHERE c.CustomerID < 20

INSERT INTO [dbo].[EmployeesDeposits](EmployeeID, DepositID)
VALUES
(15, 4),
(20, 15),
(8,	7),
(4,	8),
(3,	13),
(3,	8),
(4,	10),
(10, 1),
(13, 4),
(14, 9)

UPDATE [dbo].[Employees] 
  SET ManagerID = CASE
						WHEN EmployeeID BETWEEN 2 AND 10 THEN 1
						WHEN EmployeeID BETWEEN 12 AND 20 THEN 11
						WHEN EmployeeID BETWEEN 22 AND 30 THEN 21
						WHEN EmployeeID IN (11, 21) THEN 1
				    END

DELETE FROM [dbo].[EmployeesDeposits]
 WHERE EmployeeID = 3 
 OR DepositID = 9




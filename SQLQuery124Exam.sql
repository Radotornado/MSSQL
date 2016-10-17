-- Section 2
-- Task 1
INSERT INTO [dbo].[Flights](FlightID, DepartureTime, ArrivalTime, Status, OriginAirportID, DestinationAirportID, AirlineID)
VALUES
(1,	'2016-10-13 06:00 AM',	CAST('2016-10-13 10:00 AM' AS DATETIME),	'Delayed  ',	1,	4,	1),
(2,	'2016-10-12 12:00 PM',	CAST('2016-10-12 12:01 PM' AS DATETIME),	'Departing',	1,	3,	2),
(3,	'2016-10-14 03:00 PM',	CAST('2016-10-20 04:00 AM' AS DATETIME),	'Delayed  ',	4,	2,	4),
(4,	'2016-10-12 01:24 PM',	CAST('2016-10-12 4:31 PM' AS DATETIME),  'Departing',	3,	1,	3),
(5,	'2016-10-12 08:11 AM',	CAST('2016-10-12 11:22 PM' AS DATETIME),  'Departing',	4,	1,	1),
(6,	'1995-06-21 12:30 PM',	CAST('1995-06-22 08:30 PM' AS DATETIME),	'Arrived  ',	2,	3,	5),
(7,	'2016-10-12 11:34 PM',	CAST('2016-10-13 03:00 AM' AS DATETIME),	'Departing',	2,	4,	2),
(8,	'2016-11-11 01:00 PM',	CAST('2016-11-12 10:00 PM' AS DATETIME),	'Delayed  ',	4,	3,	1),
(9,	'2015-10-01 12:00 PM',	CAST('2015-12-01 01:00 AM' AS DATETIME),	'Arrived  ',	1,	2,	1),
(10,'2016-10-12 07:30 PM',	CAST('2016-10-13 12:30 PM' AS DATETIME),	'Departing',	2,	1,	7)

INSERT INTO [dbo].[Tickets](TicketID, Price, Class, Seat, CustomerID, FlightID)
VALUES
(1,	3000.00,	'First ',	'233-A',	3,	8),
(2,	1799.90,	'Second',	'123-D',	1,	1),
(3,	1200.50,	'Second',	'12-Z ',	2,	5),
(4,	410.68 ,    'Third ',	'45-Q ',	2,	8),
(5,	560.00 ,    'Third ',	'201-R',	4,	6),
(6,	2100.00,	'Second',	'13-T ',	1,	9),
(7,	5500.00,	'First ',	'98-O ',	2,	7)


-- Task 2
UPDATE [dbo].[Flights]
SET AirlineID = 1 WHERE Status = 'Arrived'

-- Task 3
UPDATE [dbo].[Tickets] 
SET Price = Price + ( (Price * 50) / 100 ) WHERE (SELECT MAX(Raitings) FROM [dbo].[Airlines])

-- Task 4
CREATE TABLE CustomerReviews(
	ReviewID INT,
	ReviewContent VARCHAR(255) NOT NULL,
	ReviewGrade INT CHECK(ReviewGrade >= 0 OR ReviewGrade <=10),
	AirlineID INT NOT NULL,
	CustomerID INT NOT NULL,
	CONSTRAINT PK_CustomerReviews PRIMARY KEY(ReviewID), 
	CONSTRAINT FK_Airlines_CustomerReviews FOREIGN KEY(AirlineID) REFERENCES Airlines(AirlineID),
	CONSTRAINT FK_Customers_CustomerReviews FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)
)

CREATE TABLE CustomerBankAccounts(
	AccountID INT,
	AccountNumber VARCHAR(10) NOT NULL UNIQUE,
	Balance DECIMAL(10,2) NOT NULL,
	CustomerID INT NOT NULL,
	CONSTRAINT PK_CustomerBankAccounts PRIMARY KEY(AccountID), 
	CONSTRAINT FK_Customers_CustomerBankAccounts FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)
)

-- Task 5 
INSERT INTO [dbo].[CustomerReviews](ReviewID, ReviewContent, ReviewGrade, AirlineID, CustomerID)
VALUES
(1,	'Me is very happy. Me likey this airline. Me good.',	10,	1,	1),
(2,	'Ja, Ja, Ja… Ja, Gut, Gut, Ja Gut! Sehr Gut!',	10,	1,	4),
(3,	'Meh...',	5,	4,	3),
(4,	'Well I''ve seen better, but I''ve certainly seen a lot worse…',	7,	3,	5)

INSERT INTO [dbo].[CustomerBankAccounts](AccountID, AccountNumber, Balance, CustomerID)
VALUES
(1,	'123456790',	2569.23,	1),
(2,	'18ABC23672',	14004568.23,	2),
(3, 'F0RG0100N3',	19345.20,	5)


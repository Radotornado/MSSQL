-- Selection 3
-- Task 1 - no judge
SELECT TicketID, Price, Class, Seat
FROM [dbo].[Tickets]
ORDER BY TicketID ASC

-- Task 2 - no judge
SELECT 
CustomerID, 
FirstName + ' ' + LastName AS "FullName", 
Gender
FROM [dbo].[Customers]
ORDER BY FullName ASC, CustomerID

-- Task 3 - no judge
SELECT FlightID, DepartureTime, ArrivalTime
FROM [dbo].[Flights]
WHERE Status = 'Delayed'

-- Task 4 - no judge - not ready
--SELECT TOP 5 a.AirlineID, a.AirlineName, a.Nationality, a.Rating
--FROM [dbo].[Airlines] AS a
--INNER JOIN [dbo].[Flights] AS f
--ON a.AirlineID = f.FlightID
--WHERE a.AirlineID CONTAINS f.ArilineID
--ORDER BY Rating DESC, AirlineID ASC

-- Task 5 - no judge
SELECT t.TicketID, a.AirportName AS "Destination", c.FirstName + ' ' + c.LastName AS "Customer Name"
FROM [dbo].[Tickets] AS t
INNER JOIN [dbo].[Customers] AS c 
ON t.CustomerID = c.CustomerID
INNER JOIN [dbo].[Flights] AS f
ON t.FlightID = f.FlightID
INNER JOIN [dbo].[Airports] AS a
ON f.DestinationAirportID = a.AirportID
WHERE t.Price < 5000 AND t.Class = 'First'
ORDER BY t.TicketID ASC

-- Task 6 - no judge - not ready
--SELECT c.CustomerID, c.FirstName + ' ' + c.LastName AS "FullName", t.TownName AS "HomeTown"
--FROM [dbo].[Customers] AS c
--INNER JOIN [dbo].[Towns] AS t
--ON c.HomeTownID = t.TownID
--INNER JOIN [dbo].[Flights] AS f
--ON t.TownID = f.OriginAirportID
--ORDER BY c.CustomerID ASC

-- Task 7 - no judge
SELECT c.CustomerID,
c.FirstName + ' ' + c.LastName AS "FullName",
DATEDIFF(hour,c.DateOfBirth, GETDATE())/8766 AS "Age" 
FROM [dbo].[Customers] AS c
INNER JOIN [dbo].[Tickets] AS t
ON c.CustomerID = t.CustomerID
INNER JOIN [dbo].[Flights] AS f
ON t.FlightID = f.FlightID
WHERE f.Status = 'Departing'
ORDER BY Age ASC, CustomerID ASC
CREATE TABLE Directors
(
Id INT PRIMARY KEY IDENTITY,
DirectorName VARCHAR(100) NOT NULL,
Notes VARCHAR(max)
)

CREATE TABLE Genres
(
Id INT PRIMARY KEY IDENTITY,
GenreName VARCHAR(100) NOT NULL,
Notes VARCHAR(max)
)

CREATE TABLE Categories
(
Id INT PRIMARY KEY IDENTITY,
CategoryName VARCHAR(100) NOT NULL,
Notes VARCHAR(max)
)

CREATE TABLE Movies
(
Id INT PRIMARY KEY IDENTITY,
Title VARCHAR(400) NOT NULL,
DirectorId INT NOT NULL FOREIGN KEY REFERENCES Directors(Id),
CopyRightYear DATE,
Length INT NOT NULL,
GenreId INT NOT NULL FOREIGN KEY REFERENCES Genres(Id),
CategoryId INT NOT NULL FOREIGN KEY REFERENCES Categories(Id),
Rating FLOAT NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO Directors (DirectorName, Notes)
VALUES
('David Fincher', 'GOAT'),
('Christopher Nolan', 'Just excellent'),
('Guy Ritchie', 'Second Best there is'),
('Quentin Tarantino', 'Slightly overrated IMO'),
('George Miller', 'Hopefully his career will not end soon')

INSERT INTO Genres (GenreName)
VALUES
('Action'),
('Comedy'),
('Thriller'),
('Drama'),
('Sci-fi')

INSERT INTO Categories(CategoryName)
VALUES
('Is there any difference'),
('Between genre and category'),
('I do not think so'),
('So I guess I have to make text up'),
('To fill up the required 5 entries. There you go.')

INSERT INTO Movies (Title, DirectorId, Length, GenreId, CategoryId, Rating)
VALUES
('Fight Club', 1, 150, 4, 1, 10.0),
('Snatch', 3, 120, 2, 1, 9.5),
('Dark Knight', 2, 130, 1, 2, 9.7),
('Mad Max : Fury Road', 5, 110, 1, 2, 9.9),
('Kill Bill', 4, 170, 1, 2, 8.5)
CREATE TABLE Users
(
Id BIGINT IDENTITY,
Username NVARCHAR(30) UNIQUE NOT NULL,
Password NVARCHAR(26) NOT NULL,
ProfilePicture VARBINARY(max),
LastLoginTime DATE,
IsDeleted BIT
)

ALTER TABLE Users
ADD PRIMARY KEY (Id)

INSERT INTO Users(Username, Password, LastLoginTime, IsDeleted)
VALUES
('username', 'password', '2016-12-26', 0),
('ivo', 'stupid', '2016-03-12', 1),
('godsmack', 'metal', '2016-04-26', 1),
('DaBestUsername', 'i want more money', '2016-07-11', 0),
('admin', 'admin', '2016-01-05', 1)
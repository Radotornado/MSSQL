CREATE TABLE People 
(
Id INT NOT NULL IDENTITY PRIMARY KEY,
Name VARCHAR(200) NOT NULL,
Picture VARBINARY(2),
Height FLOAT(2),
Weight FLOAT(2),
Gender CHARACTER(1) NOT NULL,
Birthdate DATE NOT NULL,
Biography VARCHAR(max)
)

INSERT INTO People(Name, Height, Weight, Gender, Birthdate, Biography)
VALUES
('name1', 1.93, 71.50, 'm', '1986-10-08', ''),
('name2', 1.23, 23.10, 'f', '1916-11-27', ''),
('name3', 1.54, 62.54, 'm', '1969-03-18', ''),
('name4', 1.32, 13.10, 'f', '1936-07-30', ''),
('name5', 1.64, 42.01, 'm', '1916-12-12', '')
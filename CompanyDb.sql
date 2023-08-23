CREATE DATABASE CompanyDb

USE CompanyDb

CREATE TABLE Employees
(
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar(50) NOT NULL,
	Surname nvarchar(50),
	Position nvarchar(200) NOT NULL,
	Salary float(7) NOT NULL
)

INSERT INTO Employees
VALUES
('Test', 'Testov', 'dfjhth', 700.95),
('Test', 'Testov', 'dfjhth', 980.95),
('Test', 'Testov', 'dfjhth', 720.91),
('Test', 'Testov', 'dfjhth', 670.95),
('Test', 'Testov', 'dfjhth', 1002.09),
('Test', 'Testov', 'dfjhth', 670.95),
('Test', 'Testov', 'dfjhth', 1973.00)

SELECT AVG(Salary) AS [Average Salary] FROM Employees

SELECT Name, Surname, Salary FROM Employees WHERE Salary > (SELECT AVG(Salary) AS [Average Salary] FROM Employees)

SELECT MAX(Salary) AS [Maximum Salary], MIN(Salary) AS [Minimum Salary] FROM Employees
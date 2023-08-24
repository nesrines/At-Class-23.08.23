CREATE DATABASE Company2Db

USE Company2Db

CREATE TABLE Departments
(
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar(200) NOT NULL CHECK(LEN(Name) > 2)
)

CREATE TABLE Employees
(
	Id int PRIMARY KEY IDENTITY,
	FullName nvarchar(200) NOT NULL CHECK(LEN(FullName) > 3),
	Salary decimal(7, 2) NOT NULL CHECK(Salary > 0),
	DepartmentId int FOREIGN KEY REFERENCES Departments(Id),
	Email nvarchar(200) UNIQUE NOT NULL
)
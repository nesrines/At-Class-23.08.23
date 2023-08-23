CREATE DATABASE MarketDb

USE MarketDb

CREATE TABLE Products
(
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar(100) NOT NULL,
	Price float(6) NOT NULL
)

ALTER TABLE Products ADD Brand nvarchar(50) NOT NULL

INSERT INTO Products
VALUES
('T-shirt', 1, 'a'),
('Trousers', 3, 'bb'),
('Skirt', 5, 'ccc'),
('Shorts', 7, 'dddd'),
('Jacket', 9, 'eeeeee'),
('Blouse', 11, 'a'),
('Coat', 13, 'bb'),
('Shoes', 15, 'ccc'),
('Sweater', 18, 'dddd'),
('Socks', 20, 'eeeeee'),
('Stockings', 25, 'a'),
('Hat', 30, 'bb')

SELECT * FROM Products WHERE Price < (SELECT AVG(Price) FROM Products)

SELECT * FROM Products WHERE Price > 10

SELECT Id, CONCAT(Name, ' ', Brand) AS [ProductInfo], Price FROM Products WHERE LEN(Brand) > 5
--Course Database

-- Students table
-- Id - avtomatik artmalidi
-- Name - null ola bilmez
-- Surname - default olaraq qeyd olunmasa 'xxx' olmalidi
-- Age - null ola bilmez
-- Point - null ola bilmez

-- table-a data elave edin
-- surname-i qeyd etmeden table-a data elave edin
-- studentin butun melumatlarini gosterin

-- Surname-i xxx olan datalarin surname-ni update edib deyishin
-- Id-i 1 olan datani point deyerini deyishin

-- Point deyeri 70 ile 90 arasinda olan butun datalari gosterin
-- Point deyerleri azalan sirayla gosterin

-- Age deyeri 21-den kicik olan datalarin name ve surname-lerini 
-- gosterin

-- Table-a AvaregePoint deyeri elave edin ve yoxlayin ki, 
-- AvaregePoint deyeri 0 ile 100 arasinda olsun

CREATE DATABASE Course

USE Course

CREATE TABLE Students(
	Id int primary key identity, -- Not null + unique
	[Name] nvarchar(100) NOT NULL,
	Surname nvarchar(120) DEFAULT 'xxx',
	Age tinyint NOT NULL,
	Point int NOT NULL
)

INSERT INTO Students
VALUES ('Hafiz', 'Mehdiyev', 21, 78),
		('Cefer', 'Memmedzade', 20, 75),
		('Ilkin', 'Dostuyev', 21, 65)

INSERT INTO Students ([Name], Age, Point)
VALUES ('Zehra', 21, 85)

SELECT * FROM Students

UPDATE Students SET Surname = 'Elgun' WHERE Surname = 'xxx'
UPDATE Students SET Point = 80 WHERE Id = 1

SELECT * FROM Students
WHERE Point >= 70 AND Point <= 90

SELECT [Name], Surname From Students
WHERE Age < 21

ALTER TABLE Students
ADD AvaregePoint float CHECK(AvaregePoint BETWEEN 0 AND 100)

UPDATE Students SET AvaregePoint = 75 WHERE Id = 1
UPDATE Students SET AvaregePoint = 70 WHERE Id = 2
UPDATE Students SET AvaregePoint = 50 WHERE Id = 3
UPDATE Students SET AvaregePoint = 80 WHERE Id = 4

INSERT INTO Students
VALUES ('Murad', 'Nuh-zade', 5, 35, 20)

SELECT * FROM Students
ORDER BY AvaregePoint DESC
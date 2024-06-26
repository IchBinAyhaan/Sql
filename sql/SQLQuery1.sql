Create Database MyApp

USE MyApp

CREATE TABLE Users (
    ID INT PRIMARY KEY IDENTITY(1,1), 
    Name NVARCHAR(40) NOT NULL,
    Surname NVARCHAR(40) NOT NULL,
    Email NVARCHAR(60) UNIQUE,
    RegistrationDate DATETIME DEFAULT GETDATE(), 
    ContactNumber NVARCHAR(40) DEFAULT '+994000000000',
    Age INT CHECK (Age > 18),
    Address NVARCHAR(200) NOT NULL
);

CREATE TABLE Categories (
    Id INT PRIMARY KEY IDENTITY(1,1) ,
    Name VARCHAR(255) NOT NULL,
    Slug VARCHAR(255) UNIQUE,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    IsActive BIT
);


INSERT INTO Users (Name, Surname, Email, RegistrationDate, ContactNumber, Age, Address)
VALUES
    ('Name1', 'Surname1', 'email1@example.com', GETDATE(), '+994123456789', 25, 'Address1'),
    ('Name2', 'Surname2', 'email2@example.com', GETDATE(), '+994987654321', 30, 'Address2'),
    ('Name3', 'Surname3', 'email3@example.com', GETDATE(), '+994555555555', 20, 'Address3');


	INSERT INTO Categories (Name, Slug, CreatedAt, IsActive)
VALUES
    ('Category1', 'category1', GETDATE(), 1),
    ('Category2', 'category2', GETDATE(), 0),
    ('Category3', 'category3', GETDATE(), 1);

	SELECT Name, Surname, Email
FROM Users;

SELECT Name, IsActive
FROM Categories;

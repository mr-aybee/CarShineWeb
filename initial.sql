
-- Create the database
CREATE DATABASE CarShine;
GO

USE CarShine;
GO

-- Create the Users table
CREATE TABLE Users (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(50) NOT NULL,
    Password NVARCHAR(255) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    Role NVARCHAR(20) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE()
);
GO

-- Create the Bookings table
CREATE TABLE Bookings (
    Id INT PRIMARY KEY IDENTITY(1,1),
    UserId INT NOT NULL,
    ServiceId INT NOT NULL,
    BookingDate DATETIME NOT NULL,
    Status NVARCHAR(20) NOT NULL,
    FOREIGN KEY (UserId) REFERENCES Users(Id)
);
GO

-- Create the Services table
CREATE TABLE Services (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Description NVARCHAR(MAX),
    Price DECIMAL(18, 2) NOT NULL
);
GO

-- Stored Procedure to Create a Booking Request
CREATE PROCEDURE cs_CreateBookingRequest
    @UserId INT,
    @ServiceId INT,
    @BookingDate DATETIME
AS
BEGIN
    INSERT INTO Bookings (UserId, ServiceId, BookingDate, Status)
    VALUES (@UserId, @ServiceId, @BookingDate, 'Pending');
END;
GO

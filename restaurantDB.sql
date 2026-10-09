DROP DATABASE IF EXISTS restaurantDB;
CREATE DATABASE restaurantDB;
USE restaurantDB;

CREATE TABLE Customers (
    customerID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Fname VARCHAR(80) NOT NULL,
    Lname VARCHAR(80) NOT NULL,
    email VARCHAR(80) NOT NULL UNIQUE,
    phone VARCHAR(20)
);

CREATE TABLE Tables (
    tableID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tableNumber INT NOT NULL UNIQUE,
    seats INT NOT NULL
);

CREATE TABLE Booking (
    bookingID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customerID INT NOT NULL,
    startTime DATETIME NOT NULL,
    endTime DATETIME NOT NULL,
    amountOfPeople INT NOT NULL,
    note VARCHAR(140),
    FOREIGN KEY (customerID) REFERENCES Customers (customerID)
);

CREATE TABLE Reserves (
    bookingID INT NOT NULL,
    tableID INT NOT NULL,
    PRIMARY KEY (bookingID, tableID),
    FOREIGN KEY (bookingID) REFERENCES Booking (bookingID),
    FOREIGN KEY (tableID) REFERENCES Tables (tableID)
);
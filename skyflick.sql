CREATE DATABASE SKYFLICK;
USE SKYFLICK;
CREATE TABLE USERS (
    User_id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    Password VARCHAR(255)
);

CREATE TABLE FLIGHTS (
    Flight_id INT AUTO_INCREMENT PRIMARY KEY,
    Airline_Name VARCHAR(100),
    Source VARCHAR(100),
    Destination VARCHAR(100),
    Departure_Time DATETIME,
    Arrival_Time DATETIME,
    Seats INT,
    Price DECIMAL(10,2)
);

CREATE TABLE BOOKINGS (
    Booking_id INT AUTO_INCREMENT PRIMARY KEY,
    User_id INT,
    Flight_Id INT,
    Booking_Date DATETIME DEFAULT CURRENT_TIMESTAMP,
    Seat_no VARCHAR(10),
    Status VARCHAR(20),
    FOREIGN KEY (User_id) REFERENCES USERS(User_id),
    FOREIGN KEY (Flight_id) REFERENCES FLIGHTS(Flight_id)
);

CREATE TABLE PAYMENTS (
    Payment_id INT AUTO_INCREMENT PRIMARY KEY,
    Booking_id INT,
    Amount DECIMAL(10,2),
    Payment_Date DATETIME DEFAULT CURRENT_TIMESTAMP,
    Payment_Status VARCHAR(20),
    FOREIGN KEY (Booking_id) REFERENCES BOOKINGS(Booking_id)
);`

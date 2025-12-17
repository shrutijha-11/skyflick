CREATE TABLE FLIGHT (
    Flight_No INT PRIMARY KEY,
    Airline VARCHAR(100),
    Source VARCHAR(100),
    Destination VARCHAR(100),
    Departure_Date DATE,
    Departure_Time DATETIME,
    Arrival_Time DATETIME,
    Duration VARCHAR(50),
    Price DECIMAL(10,2)
);

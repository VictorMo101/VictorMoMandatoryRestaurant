-- Query 1
SELECT * FROM Tables
ORDER BY tableNumber;

-- Query 2
SELECT * FROM Booking
WHERE customerID = 1
ORDER BY startTime;

-- Query 3
SELECT Reserves.tableID,
       Booking.bookingID, 
       Booking.startTime, 
       Booking.endTime, 
       Booking.amountOfPeople, 
       Booking.note,
       Customers.customerID, 
       Customers.Fname, 
       Customers.Lname, 
       Customers.phone, 
       Customers.email 
FROM Reserves
INNER JOIN Booking ON Reserves.bookingID = Booking.bookingID
INNER JOIN Customers ON Booking.customerID = Customers.customerID
WHERE Reserves.tableID = 4
    AND DATE(Booking.startTime) = '2026-10-08'
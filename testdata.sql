INSERT INTO Customers (customerID, Fname, Lname, email, phone) VALUES
(1, 'Anders', 'Jensen', 'anders.jensen@example.com', '+4520123401'),
(2, 'Mette', 'Nielsen', 'mette.nielsen@example.com', '+4520123402'),
(3, 'Lars', 'Hansen', 'lars.hansen@example.com', '+4520123403'),
(4, 'Sofie', 'Pedersen', 'sofie.pedersen@example.com', '+4520123404'),
(5, 'Mikkel', 'Andersen', 'mikkel.andersen@example.com', '+4520123405'),
(6, 'Emma', 'Christensen', 'emma.christensen@example.com', '+4520123406'),
(7, 'Jonas', 'Larsen', 'jonas.larsen@example.com', NULL),
(8, 'Freja', 'Sørensen', 'freja.sorensen@example.com', '+4520123408'),
(9, 'Oliver', 'Rasmussen', 'oliver.rasmussen@example.com', '+4520123409'),
(10, 'Ida', 'Jørgensen', 'ida.jorgensen@example.com', '+4520123410');

INSERT INTO Tables (tableID, tableNumber, seats) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(4, 4, 4),
(5, 5, 4),
(6, 6, 4),
(7, 7, 6),
(8, 8, 6),
(9, 9, 8),
(10, 10, 10);

INSERT INTO Booking (bookingID, customerID, startTime, endTime, amountOfPeople, note) VALUES
(1, 1, '2026-10-08 18:00:00', '2026-10-08 20:00:00', 2, NULL),
(2, 1, '2026-10-15 19:00:00', '2026-10-15 21:00:00', 4, 'Quiet corner if possible'),
(3, 2, '2026-10-08 17:00:00', '2026-10-08 19:00:00', 4, NULL),
(4, 3, '2026-10-08 19:30:00', '2026-10-08 21:30:00', 3, 'One guest is allergic to nuts'),
(5, 4, '2026-10-08 19:00:00', '2026-10-08 22:00:00', 12, 'Birthday dinner, please prepare a cake'),
(6, 5, '2026-10-09 18:00:00', '2026-10-09 20:00:00', 2, 'Window seat if possible'),
(7, 6, '2026-10-09 18:00:00', '2026-10-09 20:30:00', 6, NULL),
(8, 7, '2026-10-09 20:00:00', '2026-10-09 22:00:00', 2, NULL),
(9, 8, '2026-10-10 19:00:00', '2026-10-10 22:00:00', 10, 'Company dinner'),
(10, 9, '2026-10-10 18:00:00', '2026-10-10 20:00:00', 4, NULL),
(11, 10, '2026-10-10 18:30:00', '2026-10-10 20:30:00', 7, 'One vegetarian guest'),
(12, 3, '2026-10-11 12:00:00', '2026-10-11 14:00:00', 3, 'Lunch'),
(13, 2, '2026-10-17 18:00:00', '2026-10-17 20:00:00', 7, 'Anniversary'),
(14, 1, '2026-10-22 19:30:00', '2026-10-22 21:30:00', 6, NULL),
(15, 6, '2026-10-12 18:00:00', '2026-10-12 20:00:00', 2, NULL);

INSERT INTO Reserves (bookingID, tableID) VALUES
(1, 1),
(2, 4),
(3, 4),
(4, 4),
(5, 7), (5, 8), 
(6, 2),
(7, 7),
(8, 3),
(9, 10),
(10, 5),
(11, 9),
(12, 6),
(13, 5), (13, 6),
(14, 8),
(15, 1);

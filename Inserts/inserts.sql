


INSERT INTO Service (Name, Description, Duration_in_minutes, Price_in_dollar) VALUES
('Manicure', 'Nail treatment', 60, 30.00),
('Facial', 'Skincare treatment', 45, 50.00),
('Massage', 'Full body massage', 90, 80.00),
('Haircut', 'Hair trimming and styling', 30, 25.00),
('Waxing', 'Hair removal using wax', 45, 40.00),
('Pedicure', 'Foot treatment', 60, 35.00),
('Eyelash Extensions', 'Eyelash enhancement', 120, 75.00),
('Hair Repair Treatment', 'Hair treatment for damaged hair', 60, 60.00),
('Hair Coloring', 'Hair dyeing service', 60, 55.00),
('Hair Styling', 'Creative hair styling', 45, 50.00);



INSERT INTO Product (Name, Description, Quantity, Cost_in_dollar) VALUES
('Nail Polish', 'Colorful nail polish', 100, 8.00),
('Skincare Kit', 'Complete skincare set', 50, 60.00),
('Massage Oil', 'Relaxing massage oil', 30, 15.00),
('Hair Care Kit', 'Kit for damaged hair', 40, 30.00),
('Wax Strips', 'Strips for waxing', 50, 12.00),
('Foot Cream', 'Moisturizing foot cream', 25, 10.00),
('Eyelash Glue', 'Glue for eyelash extensions', 20, 20.00),
('Hair Repair Serum', 'Serum for hair repair', 30, 25.00),
('Hair Dye', 'Hair dye in various colors', 50, 8.00),
('Hair Styling Gel', 'Gel for creative hair styling', 40, 12.00),
('Nail lamp','Lamp for manicure', 20, 50.00),
('Wax machine','Heating wax machine', 25, 40.00),
('Cream','Moustrising face cream', 60, 30.00),
('Eyelash Cleanser','Product used for cleaning eyelashes', 80, 20.00);



INSERT INTO service_product (Service_id, Product_id) VALUES
(1, 1),
(1, 11),
(2, 2),
(2, 13),
(3, 3),
(3, 6),
(4, 4),
(4, 8),
(4, 10),
(5, 5),
(5, 12),
(6, 6),
(6, 11),
(7, 7),
(7, 14),
(8, 8),
(8, 4),
(9, 9),
(9, 10),
(10, 10),
(10, 4);


INSERT INTO Customer (Name, Phone, Email, Address) VALUES
('Alice Johnson', '555-123-4567', 'alice@email.com', '123 Main St'),
('Bob Smith', '777-456-7890', 'bob@email.com', '456 Oak St'),
('Catherine Davis', '888-234-5678', 'catherine@email.com', '789 Pine St'),
('David White', '555-876-5432', 'david@email.com', '101 Elm St'),
('Eva Brown', '777-987-6543', 'eva@email.com', '202 Maple St'),
('Alice Johnson', '123-456-7890', 'alice@email.com', '123 Main St'),
('Bob Smith', '987-654-3210', 'bob@email.com', '456 Oak St, Townsville'),
('Claire Davis', '555-123-4567', 'claire@email.com', '789 Pine St, Villagetown'),
('David Lee', '111-222-3333', 'david@email.com', '567 Elm St, Hamletville'),
('Emily White', '555-555-5555', 'emily@email.com', '789 Maple St, Countryside'),
('Frank Turner', '888-777-6666', 'frank@email.com', '456 Birch St, Hilltop');


INSERT INTO Employee (Name, Phone, Email, Position, Salary_in_dollar) VALUES
('John Smith', '555-123-4567', 'john@email.com', 'Pedicure Technician', 60000),
('Emma Clavis', '777-456-7890', 'emma@email.com', 'Esthetician', 55000),
('Michael Johnson', '888-234-5678', 'michael@email.com', 'Massage Therapist', 65000),
('Sophia Miller', '555-876-5432', 'sophia@email.com', 'Trichologist&Stylist', 45000),
('David Brown', '777-987-6543', 'david@email.com', 'Hairstylist', 70000),
('Olivia Backham', '333-345-6789', 'olivia@email.com', 'Nail Technician', 50000),
('Ethan Wilson', '222-234-5678', 'ethan@email.com', 'Nail Artist', 75000),
('Ava Larins', '555-876-5432', 'ava@email.com', 'Facial Technician', 60000),
('Liam Turnet', '777-234-5678', 'liam@email.com', 'Eyelashes Technician', 80000),
('Charlotte Harris', '555-987-6543', 'charlotte@email.com', 'Stylist', 55000);


INSERT INTO Employee_Service (Employee_id, Service_id) VALUES
(1, 1),
(1, 6),
(6, 1),
(6, 6),
(2, 3),
(2, 2),
(9, 2),
(9, 7),
(3, 2),
(3, 3),
(7, 1),
(7, 6),
(10, 4),
(10, 9),
(5, 4),
(5, 9),
(4, 9),
(4, 4),
(4, 10),
(8, 2),
(8, 5);


INSERT INTO Appointment (Customer_id, Service_id, Employee_id, Date, Status) VALUES
(1, 1, 5, '2024-03-15 10:00:00', 'Completed'),
(2, 2, 6, '2024-03-16 14:30:00', 'In Progress'),
(3, 3, 2, '2024-03-17 12:45:00', 'Scheduled'),
(4, 4, 9, '2024-03-18 11:15:00', 'Completed'),
(5, 5, 3, '2024-03-19 15:30:00', 'Scheduled'),
(1, 6, 2, '2024-03-20 09:30:00', 'Scheduled'),
(3, 2, 7, '2024-03-21 13:00:00', 'In Progress'),
(5, 10, 4, '2024-03-22 16:45:00', 'Scheduled'),
(2, 7, 9, '2024-03-23 11:30:00', 'Completed'),
(4, 9, 5, '2024-03-24 14:15:00', 'In Progress');



INSERT INTO Payment (Customer_id, Appointment_id, Amount, Payment_method, Date) VALUES
(1, 1, 30, 'Credit Card', '2024-03-15'),
(2, 2, 25, 'Cash', '2024-03-16'),
(3, 3, 50, 'Debit Card', '2024-03-17'),
(4, 4, 60, 'Credit Card', '2024-03-18'),
(5, 5, 40, 'Cash', '2024-03-19'),
(3, 6, 35, 'Credit Card', '2024-03-20'),
(1, 7, 45, 'Cash', '2024-03-21'),
(5, 8, 55, 'Debit Card', '2024-03-22'),
(4, 9, 30, 'Credit Card', '2024-03-23'),
(2, 10, 20, 'Cash', '2024-03-24');
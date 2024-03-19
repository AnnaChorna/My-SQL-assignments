
CREATE TABLE Service (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(255),
  Description VARCHAR(255),
  Duration_in_minutes INT,
  Price_in_dollar FLOAT
);


CREATE TABLE Product (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(255),
  Description VARCHAR(255),
  Quantity INT,
  Cost_in_dollar FLOAT
);


CREATE TABLE service_product (
  Service_id INT,
  Product_id INT,
  PRIMARY KEY (Service_id, Product_id),
  FOREIGN KEY (Service_id) REFERENCES Service(id),
  FOREIGN KEY (Product_id) REFERENCES Product(id)
);


CREATE TABLE Customer (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(255),
  Phone VARCHAR(255),
  Email VARCHAR(255),
  Address VARCHAR(255)
);


CREATE TABLE Appointment (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Customer_id INT,
  Service_id INT,
  Employee_id INT,
  Date DATETIME,
  Status VARCHAR(255),
  FOREIGN KEY (Customer_id) REFERENCES Customer(id),
  FOREIGN KEY (Service_id) REFERENCES Service(id)  -- One-to-Many Relationship with Service
);


CREATE TABLE Payment (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Customer_id INT,
  Appointment_id INT,
  Amount FLOAT,
  Payment_method VARCHAR(255),
  Date DATE,
  FOREIGN KEY (Customer_id) REFERENCES Customer(id),
  FOREIGN KEY (Appointment_id) REFERENCES Appointment(id)
);


CREATE TABLE Employee (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(255),
  Phone VARCHAR(255),
  Email VARCHAR(255),
  Position VARCHAR(255),
  Salary_in_dollar FLOAT
);


CREATE TABLE Employee_Service (
  Employee_id INT,
  Service_id INT,
  PRIMARY KEY (Employee_id, Service_id),
  FOREIGN KEY (Employee_id) REFERENCES Employee(id),
  FOREIGN KEY (Service_id) REFERENCES Service(id)
);



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
(4, 9, 5, '2024-03-24 14:15:00', 'In Progress'),
(2, 6, 10, '2024-03-23 11:30:00', 'Completed'),
(1, 4, 5, '2024-03-23 11:30:00', 'Completed'),
(8, 8, 8, '2024-03-23 11:30:00', 'Completed'),
(10, 1, 2, '2024-03-23 11:30:00', 'Completed');



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


-- = with non-correlated subqueries result

-- всі клієнти що мають таке ж ім'я як і клієнт з адресою
SELECT *
FROM Customer
WHERE Name = (
    SELECT Name
    FROM Customer
    WHERE Address = '123 Main St' LIMIT 1
);
--  змінює адресу клієнта якщо його ім'я відповідає імені клієнта з іншою адресою
UPDATE Customer
SET Address = 'Cloud street'
WHERE Name = (
    SELECT Name
    FROM (SELECT * FROM Customer) AS temp
    WHERE temp.Address = '123 Main St' LIMIT 1
);

SELECT  * from Customer;

-- видаляє клієнта, чиє ім'я має таку ж довжину, як ім'я клієнта з id 1
DELETE FROM Customer
WHERE LENGTH(Name) = (
    SELECT LENGTH(Name)
    FROM Customer
    WHERE id = 1
);

-- IN with non-correlated subqueries result

-- всі клієнти які мають апоінтменти зі статусом
SELECT *
FROM Customer
WHERE id IN (
    SELECT Customer_id
    FROM Appointment
    WHERE Status = 'Completed'
);

 -- оновлює статус апоінтментів якщо їх дата є менше або дорівнює
UPDATE Appointment
SET Status = 'Late'
WHERE id IN (
    SELECT Customer_id
    FROM Appointment
    WHERE Date <= '2024-03-19 15:30:00'
);
SELECT * FROM Customer;

-- видаляє всіх клієнтів, які не мають апоінтментів зі статусом
DELETE FROM Customer
WHERE id IN (
    SELECT Customer_id
    FROM Appointment
    WHERE Status = 'Completed'
);

-- NOT IN with non-correlated subqueries result

-- всі клієнти які не мають апоінтментів зі статусом
SELECT *
FROM Customer
WHERE id NOT IN (
    SELECT Customer_id
    FROM Appointment
    WHERE Status = 'In Progress'
);

-- змінює адресу всіх клієнтів які не мають апоінтментів зі статусом
UPDATE Customer
SET Address = 'Confidential'
WHERE id NOT IN (
    SELECT Customer_id
    FROM Appointment
    WHERE Status = 'Completed'
);

-- видаляє всіх клієнтів, які не мають апоінтментів зі статусом
DELETE FROM Customer
WHERE id NOT IN (
    SELECT Customer_id
    FROM Appointment
    WHERE Status = 'Scheduled'
);



-- EXISTS with non-correlated subqueries result

-- повертає працівників, які мають принаймні один запис у таблиці App.
SELECT *
FROM Employee e
WHERE EXISTS (
    SELECT 1
    FROM Appointment a
    WHERE a.Employee_id = e.id
);
-- оновлюємо стовпець Description таблиці Service для всіх рядків, для яких існує
-- принаймні один запис Appointment, пов'язаний з цією послугою
UPDATE Service
SET Description= 'Out of stock'
WHERE EXISTS (
    SELECT 1
    FROM Appointment
    WHERE Appointment.Service_id = Service.id
);
-- видаляємо клієнтів з таблиці Customer, які мають хоча б один запис Appointment, пов'язаний з ними
DELETE FROM Customer
WHERE EXISTS (
    SELECT 1
    FROM Appointment
    WHERE Appointment.Customer_id = Customer.id
);


-- NOT EXISTS with non-correlated subqueries result
SELECT *
FROM Customer c
WHERE NOT EXISTS (
    SELECT 1
    FROM Appointment a
    WHERE Status = 'Scedueled'
);
-- оновлюємо адресу тільки для тих клієнтів, які не мають апоінтментів у салоні.
UPDATE Customer
SET Address = 'Unknown'
WHERE NOT EXISTS (
    SELECT 1
    FROM Appointment
    WHERE Appointment.Customer_id = Customer.id
);


-- видаляємо клієнтів, які не мають жодного завершеного апоінтменту у салоні
DELETE FROM Customer
WHERE NOT EXISTS (
    SELECT 1
    FROM Appointment
    WHERE Status = 'Completed'
);

-- = with correlated subqueries result
--  всі записи з таблиці клієнтів, для яких існує апоінтмент для послуги з ідентифікатором 1
SELECT *
FROM Customer c
WHERE c.id = (
    SELECT Appointment.Customer_id
    FROM Appointment
    WHERE Appointment.Service_id = 1
);

-- зміна адреси для клієнтів для яких існує апоінтмент для послуги з ідентифікатором 1
UPDATE Customer c
SET Address = 'New'
WHERE c.id = (
    SELECT Appointment.Customer_id
    FROM Appointment
    WHERE Appointment.Service_id = 1
);

-- видаляє клієнта з таблиці Customer, якщо існує апоінтмент для послуги з ідентифікатором 1
DELETE FROM Customer
WHERE id = (
    SELECT Appointment.Customer_id
    FROM Appointment
    WHERE Appointment.Service_id = 1
);
-- IN with correlated subqueries result
-- всі записи з таблиці клієнтів, для яких існує апоінтмент зі статусом "Completed"
SELECT *
FROM Customer c
WHERE c.id IN (
    SELECT Appointment.Customer_id
    FROM Appointment
    WHERE Appointment.Status = 'Completed'
);
-- Оновлення адреси клієнтів з завершеними апоінтментами
UPDATE Customer c
SET Address = 'New Address'
WHERE c.id IN (
    SELECT Appointment.Customer_id
    FROM Appointment
    WHERE Appointment.Status = 'Completed'
);

-- видалення клієнтів з завершеними апоінтментами:
DELETE FROM Customer
WHERE id IN (
    SELECT Appointment.Customer_id
    FROM Appointment
    WHERE Appointment.Status = 'Completed'
);

-- NOT IN with correlated subqueries result:

-- всі записи з таблиці Service, для яких немає апоінтментів зі статусом
SELECT *
FROM Service s
WHERE s.id NOT IN (
    SELECT Appointment.Service_id
    FROM Appointment
    WHERE Appointment.Status = 'In Progress'
);
-- оновлення статусу працівників на завершено зміну
UPDATE Employee e
SET Position = 'Done shift'
WHERE e.id IN (
    SELECT Appointment.Employee_id
    FROM Appointment
    WHERE Appointment.Status = 'Completed'
);

-- Видалення клієнтів зі завершеними апоінтментами
DELETE FROM Customer
WHERE id IN (
    SELECT Appointment.Customer_id
    FROM Appointment
    WHERE Appointment.Status = 'Completed'
);

-- NOT IN with correlated subqueries result

-- всі робітники окрім тих що працюють
SELECT *
FROM Employee e
WHERE e.id NOT IN (
    SELECT Appointment.Employee_id
    FROM Appointment
    WHERE Appointment.Status = 'In progress'
);

-- щнщвлюємо назву послуг, які не були призначені жодному клієнту зі статусом "Completed".
UPDATE Service s
SET Name = 'Not needed'
WHERE s.id NOT IN (
    SELECT Appointment.Customer_id
    FROM Appointment
    WHERE Appointment.Status = 'Completed'
);
-- видаляємо клієнтів, які не мають жодного завершеного апоінтменту
DELETE FROM Customer
WHERE id NOT IN (
    SELECT Appointment.Customer_id
    FROM Appointment
    WHERE Appointment.Status = 'Completed'
);

-- EXISTS with correlated subqueries result
-- працівники, які мають хоча б один запланований апоінтмент
SELECT *
FROM Employee e
WHERE EXISTS (
    SELECT 1
    FROM Appointment
    WHERE Appointment.Employee_id = e.id
    AND Appointment.Status = 'Sceduled'
);

-- оновлює адресу всіх клієнтів якщо у них є хоча б один завершений аппоінтмент
UPDATE Customer c
SET Address = 'Unknown'
WHERE EXISTS (
    SELECT 1
    FROM Appointment
    WHERE Appointment.Customer_id = c.id
    AND Appointment.Status = 'Completed'
);
-- видаляє послуги для яких існують завершені апоінтменти
DELETE FROM Service
WHERE EXISTS (
    SELECT 1
    FROM Appointment
    WHERE Appointment.Customer_id = Service_id
    AND Appointment.Status = 'Completed'
);


-- NOT EXISTS with correlated subqueries result:

-- всі клієнти для яких не існують завершені апоінтменти.
SELECT *
FROM Customer c
WHERE NOT EXISTS (
    SELECT 1
    FROM Appointment
    WHERE Appointment.Customer_id = c.id
    AND Appointment.Status = 'Completed'
);
-- оновлено адресу клієнта на для тих у кого не існує жодного апоінтменту
UPDATE Customer c
SET Address = 'Unknown'
WHERE NOT EXISTS (
    SELECT 1
    FROM Appointment a
    WHERE a.Customer_id = c.id
);

-- видаляємо всіх клієнтів для яких не існують заплановані апоінтменти
DELETE FROM Customer
WHERE NOT EXISTS (
    SELECT 1
    FROM Appointment
    WHERE Appointment.Customer_id = Customer.id
    AND Appointment.Status = 'Sceduled'
);





SELECT
  e.Name AS EmployeeName,
  e.Position AS EmployeePosition,
  s.Name AS ServiceName,
  s.Description AS ServiceDescription
FROM Employee e
JOIN Employee_Service es ON e.id = es.Employee_id
JOIN Service s ON es.Service_id = s.id;



-- UNION
-- клієнти з завершеним та з всіма статусами окрім завершеного
SELECT Name
FROM Customer
WHERE id IN (
    SELECT Customer_id
    FROM Appointment
    WHERE Status = 'Completed')
UNION
SELECT Name
FROM Customer
WHERE id NOT IN (
    SELECT Customer_id
    FROM Appointment
    WHERE Status = 'Completed');

-- UNION ALL
-- з повторами
SELECT  Name
FROM Customer
WHERE id IN (
    SELECT Customer_id
    FROM Appointment
    WHERE Status = 'Completed')
UNION ALL
SELECT Name
FROM Customer
WHERE id NOT IN (
    SELECT Customer_id
    FROM Appointment
    WHERE Status = 'Completed');

-- NTERSECT
--  перетин клієнтів з завершеним та з всіма статусами окрім завершеного
SELECT  Name
FROM Customer
WHERE id IN (
    SELECT Customer_id
    FROM Appointment
    WHERE Status = 'Completed')
INTERSECT
SELECT Name
FROM Customer
WHERE id NOT IN (
    SELECT Customer_id
    FROM Appointment
    WHERE Status = 'Completed');


-- EXCEPT
-- всі послуги які надають працівники, але не включені в таблицю service_product

    SELECT s.Name AS Назва_послуги FROM Service s
WHERE EXISTS (
    SELECT 1 FROM Employee_Service es
    WHERE es.Service_id = s.id
)
EXCEPT
SELECT s2.Name AS Назва_послуги FROM Service s2
WHERE NOT EXISTS (
    SELECT 1 FROM service_product sp
    WHERE sp.Service_id = s2.id
);












SELECT
  s.Name AS ServiceName,
  s.Description AS ServiceDescription,
  p.Name AS ProductName,
  p.Description AS ProductDescription
FROM Service s
JOIN service_product sp ON s.id = sp.Service_id
JOIN Product p ON sp.Product_id = p.id;


SELECT
    s.Name AS Service_Name,
    COUNT(a.id) AS Visits,
    SUM(p.Amount) AS Total_Income
FROM Service s
JOIN Appointment a ON s.id = a.Service_id
JOIN Payment p ON a.id = p.Appointment_id
GROUP BY s.id
ORDER BY Total_Income DESC, Visits DESC;


SELECT
    e.Name AS Employee_Name,
    COUNT(a.id) AS Number_of_Appointments,
    COUNT(e.Salary_in_dollar) AS Employee_Salary
FROM Employee e
JOIN Appointment a ON e.id = a.Employee_id
GROUP BY e.id
ORDER BY Number_of_Appointments DESC, Employee_Salary DESC;



SELECT
  e.Name AS EmployeeName,
  e.Position AS EmployeePosition,
  s.Name AS ServiceName,
  s.Description AS ServiceDescription
FROM Employee e
JOIN Employee_Service es ON e.id = es.Employee_id
JOIN Service s ON es.Service_id = s.id;




SELECT
  s.Name AS ServiceName,
  s.Description AS ServiceDescription,
  p.Name AS ProductName,
  p.Description AS ProductDescription
FROM Service s
JOIN service_product sp ON s.id = sp.Service_id
JOIN Product p ON sp.Product_id = p.id;
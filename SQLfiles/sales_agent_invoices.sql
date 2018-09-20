
SELECT i.InvoiceId, e.FirstName || ' ' || e.LastName as 'FullName'
FROM Invoice i
JOIN Customer c on i.CustomerId = c.CustomerId
JOIN Employee e on c.SupportRepId = e.EmployeeId;
--Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
SELECT i.Total, c.FirstName, i.BillingCountry, e.FirstName
FROM Invoice i
JOIN Customer c on i.CustomerId = c.CustomerId
JOIN Employee e on c.SupportRepId = e.EmployeeId;
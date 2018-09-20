--Provide a query that shows total sales made by each sales agent

SELECT e.EmployeeId, sum(i.Total)
FROM Invoice i
Join Customer c on i.CustomerId = c.CustomerId
Join Employee e on c.SupportRepId = e.EmployeeId
group by e.EmployeeId;
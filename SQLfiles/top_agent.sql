--Which sales agent made the most in sales over all?
SELECT Max (Sales), Winner
FROM
	(
		SELECT e.FirstName || e.LastName as 'Winner', sum(i.Total) as 'Sales'
		from Invoice i
		join Customer c on i.CustomerId = c.CustomerId
		Join Employee e on c.SupportRepId = e.EmployeeId
		group by e.EmployeeId
	) 

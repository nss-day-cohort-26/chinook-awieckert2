--Which sales agent made the most in sales in 2009

SELECT MAX(AgentGross) 
FROM (
		SELECT e.EmployeeId, sum(i.Total) as 'AgentGross'
		FROM Invoice i
		Join Customer c on i.CustomerId = c.CustomerId
		Join Employee e on c.SupportRepId = e.EmployeeId
		WHERE i.InvoiceDate like '%2009%'
		group by e.EmployeeId
	)
		
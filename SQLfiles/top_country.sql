--Provide a query that shows the total sales per country.
SELECT MAX(Sales), Country
FROM 
	(
		SELECT i.BillingCountry as 'Country', sum(i.Total) as 'Sales' 
		FROM Invoice i
		group by i.BillingCountry
	)

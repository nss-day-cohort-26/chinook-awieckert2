SELECT c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry FROM Customer c
JOIN Invoice i on c.CustomerId = i.CustomerId
WHERE Country = 'Brazil';
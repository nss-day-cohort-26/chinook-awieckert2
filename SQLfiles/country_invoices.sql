--Provide a query that shows the # of invoices per country. HINT: GROUP BY


SELECT i.BillingCountry, Count(i.InvoiceId)
FROM Invoice i
group by i.BillingCountry
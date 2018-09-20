--Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
SELECT count(i.InvoiceId)
FROM Invoice i
WHERE i.InvoiceDate Like '%2009%' or i.InvoiceDate like '%2011%';
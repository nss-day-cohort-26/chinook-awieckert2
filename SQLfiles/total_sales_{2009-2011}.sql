
SELECT sum(i.Total)
FROM Invoice i
WHERE i.InvoiceDate Like '%2009%'

union

SELECT Sum(i.Total)
FROM Invoice i
Where i.InvoiceDate like '%2011%';

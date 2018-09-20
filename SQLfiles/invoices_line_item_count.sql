--Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT i.InvoiceId, count(il.InvoiceLineId)
from Invoice i
join InvoiceLine il on i.InvoiceId = il.InvoiceId
group by i.InvoiceId;
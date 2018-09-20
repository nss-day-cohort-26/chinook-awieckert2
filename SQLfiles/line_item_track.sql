--includes the purchased track name with each invoice line item

SELECT il.InvoiceLineId, t.Name as 'Track Name'
FROM InvoiceLine il
Join Track t on il.TrackId = t.TrackId;

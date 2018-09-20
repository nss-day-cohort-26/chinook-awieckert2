--Provide a query that shows the most purchased Media Type.
SELECT mt.Name, count(mt.MediaTypeId) as 'Sales per Type'
FROM Invoice i
Join InvoiceLine il on i.InvoiceId = il.InvoiceId
Join Track t on il.TrackId = t.TrackId
Join MediaType mt on t.MediaTypeId = mt.MediaTypeId
group by mt.Name
order by 2 desc
LIMIT 1;

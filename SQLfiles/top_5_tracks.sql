--Provide a query that shows the top 5 most purchased songs.
SELECT t.Trackid, count(t.TrackId)
FROM Invoice i
Join InvoiceLine il on i.InvoiceId = il.InvoiceId
Join Track t on il.TrackId = t.TrackId
group by t.TrackId
order by 2 desc
LIMIT 5;

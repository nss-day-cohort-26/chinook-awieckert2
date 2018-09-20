 --Provide a query that shows the most purchased track of 2013.
 
 --No track is purchased more than once in 2013. Would use a Max to return the max value but there isn't one.
SELECT t.Trackid, count(t.TrackId)
FROM Invoice i
Join InvoiceLine il on i.InvoiceId = il.InvoiceId
Join Track t on il.TrackId = t.TrackId
Where i.InvoiceDate like '%2013%'
group by t.TrackId
order by 2 desc;

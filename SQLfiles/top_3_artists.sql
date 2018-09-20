--Provide a query that shows the top 3 best selling artists.
SELECT art.Name, count(art.ArtistId)
FROM Invoice i
Join InvoiceLine il on i.InvoiceId = il.InvoiceId
Join Track t on il.TrackId = t.TrackId
join Album a on t.AlbumId = a.AlbumId
Join Artist art on a.ArtistId = art.ArtistId
group by art.Name
order by 2 desc
LIMIT 3;

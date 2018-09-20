--Provide a query that includes the purchased track name AND artist name with each invoice line item.

Select il.InvoiceLineId, t.Name as 'Track Name', art.Name as 'Artist Name'
from InvoiceLine il
Join Track t on il.TrackId = t.TrackId
Join Album a on t.AlbumId = a.AlbumId
Join Artist art on a.ArtistId = art.ArtistId;

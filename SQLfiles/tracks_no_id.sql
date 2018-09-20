--Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT t.Name as 'Track Name', a.Title as 'Album Name', m.Name as 'Media Type' 
from Track t
join Album a on t.AlbumId = a.AlbumId
join MediaType m on t.MediaTypeId = m.MediaTypeId
join Genre g on t.GenreId = g.GenreId;
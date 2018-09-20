--Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.


SELECT p.Name, count(t.TrackId)
FROM Playlist p
Join PlaylistTrack pt on p.PlaylistId = pt.PlaylistId
JOIN Track t on pt.TrackId = t.TrackId
group by p.PlaylistId;
SELECT P.Name,COUNT(*) AS 'Track Count'
FROM Playlist AS P JOIN PlaylistTrack AS PT ON P.PlaylistId == PT.PlaylistId
  GROUP BY P.PlaylistId

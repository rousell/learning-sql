SELECT P.Name,P.PlaylistId,COUNT(*)
FROM Playlist AS P JOIN PlaylistTrack AS PT ON P.PlaylistId == PT.PlaylistId
  GROUP BY P.PlaylistId

SELECT Artist.Name,SUM(SQ.Quantity) AS "PurchasedQuantity"
FROM (SELECT *
  FROM (SELECT Track.AlbumId,InvoiceLine.Quantity,Track.Name
    FROM InvoiceLine JOIN Track ON Track.TrackId == InvoiceLine.TrackId) AS SQ2
  JOIN Album AS A ON SQ2.AlbumId == A.AlbumId) AS SQ
JOIN Artist ON Artist.ArtistId == SQ.ArtistId
  GROUP BY Artist.ArtistId
  ORDER BY PurchasedQuantity DESC

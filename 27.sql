SELECT MediaType.Name,SUM(SQ.Quantity) AS "Quantity"
FROM
  (SELECT * FROM InvoiceLine JOIN Track ON InvoiceLine.TrackId == Track.TrackId) AS SQ
JOIN MediaType ON MediaType.MediaTypeId == SQ.MediaTypeId
  GROUP BY MediaType.Name
  ORDER BY Quantity DESC
  LIMIT 1

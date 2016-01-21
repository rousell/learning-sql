SELECT T.Name,COUNT(I.Quantity) AS Count
FROM InvoiceLine AS I JOIN Track AS T ON I.TrackId == T.TrackId
  GROUP BY T.TrackId
  ORDER BY COUNT(I.Quantity) DESC

-- filtering for top 5 purchased tracks is not really possible

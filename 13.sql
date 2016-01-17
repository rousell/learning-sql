SELECT InvoiceLine.*, Track.Name,Track.Composer AS "Track Name" FROM InvoiceLine JOIN Track ON InvoiceLine.TrackId == Track.TrackId

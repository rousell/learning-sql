SELECT I.InvoiceId,I.InvoiceDate,C.CustomerId,C.FirstName,C.LastName,C.Country
FROM Customer AS C JOIN Invoice AS I
  WHERE C.Country == 'Brazil'

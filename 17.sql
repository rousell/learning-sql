SELECT Invoice.*,COUNT(InvoiceLine.InvoiceId) AS "Count of Invoice Lines"
FROM Invoice JOIN InvoiceLine ON Invoice.InvoiceId == InvoiceLine.InvoiceId
  GROUP BY Invoice.InvoiceId

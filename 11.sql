SELECT InvoiceId,COUNT(*) AS "Count Per InvoiceId"
FROM InvoiceLine
  GROUP BY InvoiceId

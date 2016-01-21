SELECT Invoice.BillingCountry,COUNT(*) AS "Invoice Count"
FROM Invoice
  GROUP BY Invoice.BillingCountry

SELECT
  substr(InvoiceDate,1,4) AS "Invoice Year",
  COUNT(*) AS "Invoice Count",ROUND(SUM(Total),2) AS "Invoice Total"
FROM Invoice
  WHERE (substr(InvoiceDate,1,4) LIKE "2009" OR substr(InvoiceDate,1,4) LIKE "2011")
  GROUP BY substr(InvoiceDate,1,4)

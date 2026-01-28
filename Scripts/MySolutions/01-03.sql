SELECT c.firstname, c.lastname, c.customerid,salesId
FROM customer c
OUTER FULL JOIN sales s ON c.customerid=s.customerid

SELECT DISTINCT e.firstname,e.lastname
FROM employee e
LEFT JOIN sales s ON e.employeeid=s.employeeid 
WHERE title='Sales Person' AND salesId ISNULL
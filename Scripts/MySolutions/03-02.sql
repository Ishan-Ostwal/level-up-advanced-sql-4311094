with salesData as (SELECT employeeid, 
strftime('%Y-%m-01',s.solddate) as Month, 
sum(salesamount) as totalSales
from sales s
where s.solddate between '2021-01-01' and '2021-12-31'
group by employeeid, Month)

Select e.firstname,e.lastname,e.employeeid,Month,totalSales
from salesData sd inner join employee e on sd.employeeid=e.employeeid

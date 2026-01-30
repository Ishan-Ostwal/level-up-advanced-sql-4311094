SELECT strftime('%Y-01-01', solddate) as SaleYear,
        sum(salesamount) as TotalSales
FROM sales
group by strftime('%Y-01-01', solddate)
order by SaleYear;
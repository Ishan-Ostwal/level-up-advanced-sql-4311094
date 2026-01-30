select * from sales inner join inventory on sales.inventoryid=inventory.inventoryid 
where modelid in
(select modelid from model where enginetype='Electric')

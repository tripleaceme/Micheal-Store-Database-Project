-- get all sales from customers(company) in the west region
select full_name, total_order,format(profit,2) total_profit from
(select cs.customer_id, full_name, count(order_id) total_order, sum(profit) profit from customer cs
join orders ord using(customer_id) 
join store_location sl on sl.store_location_id  = ord.store_id
join states using(state_code)
join regions using(region_id)
where region_id = 2 and (full_name like('%Corp%') or full_name like('%Ltd%'))
group by cs.customer_id) inner_que
where profit > 10000 order by 2 desc;

select * from customers;
-- State Analysis
-- Q1. 
/*
1.What was the best month for sales? How much was earned that month?

2.Which city had the highest number of sales?

3.Recommend the most appropriate time to display advertising to maximize the likelihood of customers buying the products?

4.What products sold the most? Why do you think it sold the most?

5. Delivery Mode by state


















*/
select procure_date,order_date,shipping_date,delivery_date from orders order by procure_date desc;

-- Customer Analysis
-- Sales Rep Analysis
-- Regions Analysis
-- Warehouse Analysis
-- TimeZone Analysis
-- Product Analysis



-- get all sales from customers(company) in the west region
SELECT 
    full_name, total_order, FORMAT(profit, 2) total_profit
FROM
    (SELECT 
        cs.customer_id,
            full_name,
            COUNT(order_id) total_order,
            SUM(profit) profit
    FROM
        customer cs
    JOIN orders ord USING (customer_id)
    JOIN store_location sl ON sl.store_location_id = ord.store_id
    JOIN states USING (state_code)
    JOIN regions USING (region_id)
    WHERE
        region_id = 2
            AND (full_name LIKE ('%Corp%')
            OR full_name LIKE ('%Ltd%'))
    GROUP BY cs.customer_id) inner_que
WHERE
    profit > 10000
ORDER BY 2 DESC;

select count(*) from orders;
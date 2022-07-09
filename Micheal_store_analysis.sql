-- State Analysis
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
create database Nassu_candy_distributor;
use Nassu_candy_distributor;

select count(*) from nassu_data;
select * from nassu_data;
desc nassu_data;

SELECT * FROM `factories co-ordinates`;
RENAME TABLE `factories co-ordinates` TO factories_coordinates;
select *from factories_coordinates;
desc factories_coordinates;

SELECT * FROM `products and factories correlation`;
RENAME TABLE `products and factories correlation` TO products_factories_correlation;
select*from products_factories_correlation;
desc products_factories_correlation;

#structure change nassu_data
alter table nassu_data modify Order_ID varchar(100);

update nassu_data
SET order_date = STR_TO_DATE(order_date, '%d-%m-%Y');
alter table nassu_data modify Order_Date date;

UPDATE nassu_data
SET ship_date = STR_TO_DATE(ship_date, '%d-%m-%Y');
alter table nassu_data modify Ship_date date;

alter table nassu_data modify lead_time int;
alter table nassu_Data modify dealyed_shipped varchar(100);
alter table nassu_data modify dealyed_flag int;
alter table nassu_data modify ship_mode varchar(100);
alter table nassu_data modify customer_id int;
alter table nassu_data modify country_Region varchar(100);
alter table nassu_data modify city varchar(100);
alter table nassu_data modify state_province varchar(100);
alter table nassu_data modify routes varchar(100);
alter table nassu_data modify postal_code varchar(100);
alter table nassu_data modify division varchar(100);
alter table nassu_data modify region varchar(100);
alter table nassu_data modify Product_id varchar(100);
alter table nassu_data modify product_name varchar(100);
alter table nassu_data modify factory varchar(100);
alter table nassu_data modify Factory_location varchar(100);
alter table nassu_data modify sales decimal(10,2);
alter table nassu_data modify units int;
alter table nassu_data modify gross_profit decimal(10,2);
alter table nassu_data modify cost decimal(10,2);
alter table nassu_data modify total_sales decimal(10,2);
alter table nassu_data modify total_cost decimal(10,2);
alter table nassu_data modify Total_Gross_Profit decimal(10,2);

#structure change factories_coordinates
alter table factories_coordinates modify factory_name varchar(100);
alter table factories_coordinates modify latitude int;
alter table factories_coordinates modify longitude int;
alter table factories_coordinates modify location varchar(100);

#structure change products_factories_correlation
alter table products_factories_correlation modify factory varchar(100);
alter table products_factories_correlation modify division varchar(100);
alter table products_factories_correlation modify product_name varchar(100);

#add primary key
alter table nassu_data add primary key (Row_ID);
alter table factories_coordinates add primary key(factory_name);
alter table products_factories_correlation add primary key(product_name);

#foreign key
alter table nassu_data add foreign key(product_name) references 
products_factories_correlation(product_name);

alter table nassu_data add foreign key(factory)
references factories_coordinates(factory_name);

desc nassu_data;
desc factories_coordinates;
desc products_factories_correlation;


# QUESTIONS:-
#Route & Efficiency
#wasq that return avg lead time for each route by joining orders and product table.
select routes,avg(lead_time) as avg_lead_time from nassu_data group by routes;

#wasq that return top 5 routes with highest delay count using join between orders and factories table
select routes,count(dealyed_flag) as delay_count from 
nassu_data group by routes order by count(dealyed_flag) desc limit 5;

#wasq that return route-wise total orders and delayed orders with delay percentage
SELECT routes,COUNT(*) AS total_orders,
SUM(CASE WHEN dealyed_flag = 1 THEN 1 ELSE 0 END) AS delayed_orders,
ROUND(AVG(dealyed_flag) * 100, 2) AS delay_percentage
FROM nassu_data GROUP BY routes;

#wasq that return fastest route per factory using group by and window function
select factory_name,routes, dense_rank() over(partition by factory_name) 
as d_rn from nassu_data inner join factories_coordinates;

#🌍 Geographic Analysis

#wasq that return state-wise avg lead time by joining orders and factory coordinates
select state_province,avg(lead_time) as avg_lead_time,
latitude,longitude from nassu_data inner join 
factories_coordinates group by 1,3,4;

#wasq that return region with highest total delay count using group by
select region,count(dealyed_flag) as total_delay from nassu_data
where dealyed_flag =1  group by 1 order by count(dealyed_flag) desc;

#wasq that return top 3 cities per region by total sales using join and dense_rank
select region,city,total_sales,dense_rank()
over(partition by region)as d_rn from nassu_data
order by total_sales desc limit 3;

#Ship Mode Analysis

#wasq that return ship mode wise total orders, avg lead time and delay percentage
SELECT ship_mode,COUNT(*) AS total_orders,
ROUND(AVG(lead_time), 2) AS avg_lead_time,
ROUND(AVG(dealyed_flag) * 100, 2) AS delay_percentage
FROM nassu_data GROUP BY ship_mode;


#wasq that return best ship mode per region based on lowest avg lead time using ranking
select country_region,ship_mode,avg(lead_time) as avg_lead_time,
rank() over(partition by country_region) from nassu_data group by 1,2;

#Factory Performance

#wasq that return factory-wise total sales, total profit and avg lead time
select factory_name,total_sales,total_gross_profit,
avg(lead_time) as a_l_t from nassu_data inner join 
factories_coordinates group by 1,2,3;

#wasq that return factory with highest delayed shipments per division
select division,factory,count(dealyed_flag) as dealyed_shipments
from nassu_data where dealyed_flag=1 group by 1,2 order by dealyed_flag desc; 

#wasq that return factories where delay percentage is greater than overall avg delay
SELECT factory,ROUND(AVG(dealyed_flag) * 100, 2)
AS factory_delay_percentage FROM nassu_data
GROUP BY factory HAVING AVG(dealyed_flag) > (
SELECT AVG(dealyed_flag)FROM nassu_data);

#Product & Division Insights

#wasq that return division-wise total sales, total profit and avg lead time using join
select division,total_sales,total_gross_profit,avg(lead_time) from nassu_data group by 1,2,3;

#wasq that return top 5 products by sales with their avg shipping delay
select product_name,sales,avg(dealyed_flag) from 
nassu_data group by 1,2 order by sales desc limit 5;

#wasq that return products which have delay percentage above 20 percent
SELECT product_name,AVG(dealyed_flag) * 100 AS delay_percentage
FROM nassu_data GROUP BY product_name
HAVING AVG(dealyed_flag) * 100 > 20;

#Sales + Logistics Combined
#wasq that return route-wise total sales and delay percentage using group by
select routes,total_sales,avg(dealyed_flag)*100 as dealy_percentage
from nassu_data group by 1,2;

#wasq that return top regions contributing to profit but having high avg lead time
select region,gross_profit,avg(lead_time) as 
alt from nassu_data group by 1,2 order by alt;

#wasq that return cost vs profit aggregated by region and ship mode
select region,ship_mode,sum(cost) as cost,
sum(gross_profit) as profit from nassu_data group by 1,2;

#Advanced (Window Functions)
#wasq that rank factories within each region based on total sales
with cte as
(select region,factory,total_sales, dense_rank()
over(partition by region) from nassu_data)
select*from cte;

#wasq that calculate running total of sales per region ordered by date
SELECT region,order_date,total_sales,SUM(total_sales) 
OVER(PARTITION BY region ORDER BY order_date)
AS running_total_sales FROM nassu_data;

#wasq that return lag comparison of lead time between consecutive shipments per route
select*,datediff(ship_date,order_date) as dated from 
(select routes,order_date,ship_date,
lead(order_date,1,0) over (partition by routes
order by order_date) as next_date from nassu_data)
as subquery;

#wasq that return top 2 routes per state with highest delays using dense_rank
select*from
(select state_province,routes,count(dealyed_flag) as countd, 
dense_rank() over(partition by state_province
order by count(dealyed_flag) desc) as d_rn from nassu_Data 
group by 1,2) as top_Rank where d_rn in (2);
 
#Subquery & Case Logic

#wasq that return routes where delay count is above avg delay count using subquery
SELECT routes,COUNT(*) AS delay_count
FROM nassu_data
WHERE dealyed_flag = 1
GROUP BY routes
HAVING COUNT(*) > 
(SELECT AVG(route_delay_count)
FROM (SELECT COUNT(*) AS route_delay_count
FROM nassu_data
WHERE dealyed_flag = 1
GROUP BY routes) t);

#wasq that categorize shipments into fast, medium and slow based on lead time using case when
SELECT ship_mode,lead_time,
CASE 
WHEN lead_time BETWEEN 904 AND 1089 THEN 'Fast'
WHEN lead_time BETWEEN 1090 AND 1275 THEN 'Medium'
WHEN lead_time BETWEEN 1276 AND 1461 THEN 'Slow'
ELSE 'Very Slow'
END AS shipment_category
FROM nassu_data;


select*from nassu_data;
select*from products_factories_correlation;
select*from factories_coordinates;

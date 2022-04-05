-- Find the count of payments per customer in descending order.
select customer_id
, count (payment) 
from payment
group by customer_id
order by (count (payment)) desc
	, customer_id desc;
	
	
-- Find the top 5 customers who have spent the most money.
select customer_id
, sum (amount)
from payment
group by customer_id
order by (count (payment)) desc
	, customer_id desc
limit 5;

--Find the bottom 5 customers who have spent the least money.
select customer_id
, sum (amount)
from payment
group by customer_id
order by (count (payment)) asc
	, customer_id asc
limit 5;


-- Find the top 10 customers with the highest average payment rounded to two decimal places.
select customer_id
, round(avg (amount),2)
from payment
group by customer_id
order by (count (payment)) desc
	, customer_id desc
limit 10;

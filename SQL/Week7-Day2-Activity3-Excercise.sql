Select * from payment;


-- What is the average payment amount?
select round(avg (amount), 2) as avg_amount
from payment;

-- What is the total payment amount?
select round(sum (amount), 2) as avg_amount
from payment;

-- What is the minimum payment amount?
select round(min (amount), 2) as avg_amount
from payment;

-- What is the maximum payment amount?
select round(max (amount), 2) as avg_amount
from payment;

--How many customers has each staff serviced?
select staff_id
, count (Distinct customer_id) 
from payment
group by staff_id;


-- What is the count of payments for each customer?
select customer_id
, count (payment) 
from payment
group by customer_id
order by (count (payment)) desc
	, customer_id desc;
	
-- Which customers have made over 40 payments?
select customer_id
, count (payment) 
from payment
group by customer_id
having (count (payment)) > 40
order by (count (payment)) desc
	, customer_id desc;





-- How do you get "Total Sales volumes by Store_id"
	-- this table has "amount" and rental_id
	SELECT * FROM payment LIMIT 10;
	-- this one has "store_id" and inventory_id
	SELECT * FROM inventory LIMIT 10;
	-- this one has "inventory_id" and rental_id
	SELECT * FROM rental LIMIT 10;


-- So we  join store_id and inveotry_id with rental
select
	a.store_id
	, 	a.inventory_id 
	, 	b.rental_id
from inventory as a 
	left join rental as b 
	on a.inventory_id = b.inventory_id
limit 10;


--- this is not working yet!!
-- So now adding payment as c
select
	a.store_id
	, 	a.inventory_id 
	, 	b.rental_id
	, 	c.store_id
from inventory as a 
	left join rental as b 
	on a.inventory_id = b.inventory_id
		left join payment as c
		on b.rental_id = c.rental_id
limit 10;



-- lets copy this from the solution:
SELECT s.store_id, SUM(amount) AS Gross
FROM payment AS p
  JOIN rental AS r
  ON (p.rental_id = r.rental_id)
    JOIN inventory AS i
    ON (i.inventory_id = r.inventory_id)
      JOIN store AS s
      ON (s.store_id = i.store_id)
      GROUP BY s.store_id;



-- Now creating a view
-- Create view from query
CREATE VIEW total_sales AS
SELECT s.store_id, SUM(amount) AS Gross
FROM payment AS p
JOIN rental AS r
ON (p.rental_id = r.rental_id)
  JOIN inventory AS i
  ON (i.inventory_id = r.inventory_id)
    JOIN store AS s
    ON (s.store_id = i.store_id)
    GROUP BY s.store_id;

-- Query the table view created
SELECT *
FROM total_sales;

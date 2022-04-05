-- Starting with this query as the basis
select title, film_id from film limit 10;

--Using "LIKE
select title, film_id from film 
where lower (title) like '%early%'
limit 10;

-- another base query
select * from inventory
limit 10;

-- find the store id for the film that has "early" in it - by manually selecting ther film_id
select store_id, film_id from inventory
where film_id = 268
limit 10;


-- find the store id for the film that has "early" in it
select store_id, film_id from inventory
where film_id in (select film_id from film 
					where lower (title) like '%early%'
					limit 10)
limit 10;


-- now grouping by - to squish them together
select store_id, film_id from inventory
where film_id in (select film_id from film 
					where lower (title) like '%early%'
					limit 10)
group by store_id
	, film_id;


-- now doing hte same thing with join
select a.store_id, a.film_id 
from inventory as a join film as b on a.film_id= b.film_id where lower (b.title) like '%early%'
group by a.store_id
, a.film_id;

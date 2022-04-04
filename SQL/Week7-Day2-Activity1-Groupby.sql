SELECT * FROM actor LIMIT 100;
SELECT * FROM address LIMIT 100;
SELECT * FROM city LIMIT 100;
SELECT * FROM country LIMIT 100;
SELECT * FROM customer LIMIT 100;
SELECT * FROM customer_list LIMIT 100;
SELECT * FROM film LIMIT 100;
SELECT * FROM film_actor LIMIT 100;
SELECT * FROM inventory LIMIT 100;
SELECT * FROM payment LIMIT 100;
SELECT * FROM rental LIMIT 100;
SELECT * FROM staff LIMIT 100;
SELECT * FROM store LIMIT 100;


Select count (film_id) from film;
Select count (Distinct film_id) from film;
-- this changes the column name of the output
Select count (Distinct film_id) as NUM_FILMS from film;

-- this is an example of Group by
Select rating, count (film_id) as NUM_FILMS from film group by rating;

-- Now we have an example using "Having" - which is an equivalent of "Where" for Groupby 
Select rating, count (film_id) as NUM_FILMS from film 
group by rating
having count (film_id)>200;
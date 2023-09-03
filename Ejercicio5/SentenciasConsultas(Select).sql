SELECT film_id, title FROM film;
SELECT * FROM film LIMIT 5;
SELECT * FROM film WHERE film_id <4;
SELECT * FROM film WHERE rating='PG' OR rating='G';
SELECT * FROM actor WHERE first_name IN ('Angela','Angelina','Audrey');
SELECT * FROM actor WHERE first_name ='Julia';
SELECT * FROM actor WHERE first_name IN ('Chris','Cameron','Cuba');
SELECT * FROM customer WHERE first_name = 'Jamie' AND last_name = 'Rice';
SELECT amount, payment_date FROM payment WHERE amount<1;
SELECT return_date FROM rental;
SELECT country_id,city FROM city ORDER BY country_id, city;
SELECT rental_id,return_date FROM rental WHERE return_date IS NOT NULL ORDER BY return_date DESC LIMIT 3;
SELECT COUNT(*) FROM film WHERE rating IN ('NC-17','PG','PG-13') GROUP BY rating;
SELECT COUNT(DISTINCT customer_id) FROM rental;
SELECT COUNT(DISTINCT last_name) FROM customer;
SELECT film_id, COUNT(actor_id) AS cantidad_actores FROM film_actor GROUP BY film_id ORDER BY cantidad_actores DESC LIMIT 10;
SELECT country_id ,COUNT(*) AS cantidad_ciudades FROM city GROUP BY country_id ORDER BY country_id;
SELECT film_id,title, ROUND(avg(rental_rate),2) FROM film GROUP BY film_id ORDER BY rental_rate;
SELECT CONCAT(first_name, ' ', last_name) FROM actor ORDER BY LENGTH(CONCAT(first_name, ' ', last_name)) DESC LIMIT 10;




USE sakila;
SHOW TABLES;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
SELECT title FROM film;
SELECT Distinct(NAME) AS language FROM language;
SELECT first_name FROM staff;
SELECT Distinct(release_year) FROM film;
#above are the answers to the first 4 questions
#5.1
Select * from address;
SELECT Count(store_id) AS number_of_stores FROM store ; 
#5.2
Select count(staff_id) AS number_of_employees FROM staff;
#5.3
SELECT COUNT(inventory_id) as available_movies FROM inventory;

SELECT COUNT(rental_id) AS rented_movies from rental;
#5.4
SELECT DISTINCT last_name FROM actor;
#6
SELECT * from Film
order by length DESC
limit 10;

#7.1
SELECT * FROM actor
Where first_name like "SCARLETT";

#7.2
SELECT * FROM film
where title like "%ARMAGEDDON%" and length > 100;

#7.3
Select Count(film_id) from film
where special_features like "%Behind the Scenes%"
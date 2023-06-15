USE sakila;
SELECT amount, return_date 
FROM payment JOIN rental
ON rental.rental_id = payment.rental_id;
#using (rental_id)
#1-List the number of films per category.
select count(film.title), category.name from film
join film_category using (film_id)
join category using (category_id)
group by category.name;
#2-Retrieve the store ID, city, and country for each store
SELECT store.store_id, city.city, country.country
FROM store
JOIN address ON store.address_id = address.address_id
JOIN city ON address.city_id = city.city_id
JOIN country ON city.country_id = country.country_id;
#3-Calculate the total revenue generated by each store in dollars
SELECT s.store_id, SUM(p.amount) AS total_revenue
FROM store s
JOIN staff st ON s.store_id = st.store_id
JOIN payment p ON st.staff_id = p.staff_id
GROUP BY s.store_id;
#4-Determine the average running time of films for each category
SELECT c.name AS category, AVG(f.length) AS average_running_time
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
GROUP BY c.name;
#5-Identify the film categories with the longest average running time.

SELECT c.name AS category, AVG(f.length) AS average_running_time
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
GROUP BY c.name
ORDER BY average_running_time DESC;

#6-Display the top 10 most frequently rented movies in descending order.

SELECT f.film_id, f.title, COUNT(*) AS rental_count
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.film_id, f.title
ORDER BY rental_count DESC
LIMIT 10;

#7-Determine if "Academy Dinosaur" can be rented from Store 1.
SELECT EXISTS (
    SELECT 1
    FROM film f
    JOIN inventory i ON f.film_id = i.film_id
    JOIN store s ON i.store_id = s.store_id
    WHERE f.title = 'Academy Dinosaur'
    AND s.store_id = 1
) AS rental_status;

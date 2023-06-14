USE sakila;
#1- List all films whose length is longer than the average of all the films.
SELECT title 
FROM film
WHERE length > (
				SELECT AVG(Length)
                FROM film);

#2-How many copies of the film Hunchback Impossible exist in the inventory system?
SELECT COUNT(*) 
FROM inventory
WHERE film_id = (SELECT film_id
				FROM film 
				WHERE title ="Hunchback Impossible" );
#3- Use subqueries to display all actors who appear in the film Alone Trip.

SELECT first_name, last_name
FROM actor
WHERE actor_id IN (
    SELECT actor_id
    FROM film_actor
    WHERE film_id = (
        SELECT film_id
        FROM film
        WHERE title = 'Alone Trip'
    )
);

#4- Identify all movies categorized as family films.
SELECT title 
FROM film
WHERE film_id IN (SELECT film_id
				FROM film_category
                WHERE category_id = (
                SELECT category_id
                FROM category
                WHERE name = "Family"));
#5- Get name and email from customers from Canada using subqueries
SELECT first_name, last_name, email 
FROM customer 
WHERE address_id IN (SELECT address_id
					FROM address 
                    WHERE city_id IN  (SELECT city_id
										FROM city 
                                        Where country_id = (SELECT country_id
															FROM country
                                                            WHERE Country = "Canada")));
                
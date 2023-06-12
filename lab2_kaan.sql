#Challenge 1 
#1.1 
SELECT title from film
where length = (Select min(length) from film);
SELECT title from film
where length = (Select max(length) from film);
#1.2
select floor(avg(length)/60) as hours, floor(avg(length)%60) as minutes from film;
#2.1
select datediff(max(rental_date),min(rental_date)) as date_difference from rental;
#2.2
SELECT *, MONTHNAME(rental_date) AS rental_month, DAYNAME(rental_date) AS rental_weekday
FROM rental
LIMIT 20;
#2.3
Select *,
case 
when DAYNAME(rental_date) in ("Saturday", "Sunday") then "weekend"
else "workday"
end as day_type
from rental;

#3
#Update film set rental_duration = "Not Available" where rental_duration = "NULL"

#4
SELECT *, Concat(first_name, last_name, left(email,3)) as marketing_info from customer;

#Challenge 2 
#1.1
select count(film_id) as total_films_released from film;
#1.2
select rating, count(*) as total_count_rating
from film
group by rating;
#1.3
select rating, count(*) as total_count_rating
from film
group by rating
order by total_count_rating DESC;
#2
select staff_id, count(*) as rental_count from rental
group by
staff_id;
#3.1
select avg(length), rating as length_rating from film
group by 
rating;
#3.2
select avg(length) > 120, rating as long_movies_rating from film
group by
rating;
#4
select distinct last_name as not_repeating_names from actor;

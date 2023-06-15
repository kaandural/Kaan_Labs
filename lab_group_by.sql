use sakila;
#1.
select distinct last_name from actor
group by last_name
having count(*)=1;
#2.
select last_name from actor
group by last_name
having count(*) > 1;
#3.
Select count(rental_id), staff_id from rental 
group by staff_id;
#4.
select rating, count(*) as film_count
from film
group by rating;
#5.
select round(avg(length),2) as average_lenght
from film
group by rating;
#6.
select round(avg(length),2), rating as average_lenght_120_more
from film
group by rating
having avg(length) > 120 ;


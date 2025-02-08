USE sakila;
show tables;

/**display all data from a table***/
SELECT * FROM actor, film, customer;

/**Titles of all fims table film**/
SELECT title FROM film;

-- list of langages --
SELECT name AS language FROM language;

-- list of first name of all employees---
SELECT first_name FROM staff;

/** unique year**/
SELECT DISTINCT release_year FROM film;

/** counting records for database insights**/
-- Determine the numbers of stores of the company--
SELECT count(*) AS number_of_stores
FROM store;

/** Deetermine the numb. of employees**/
SELECT count(*) AS number_of_rmployees
FROM staff;

/** how many films are rented and hw many available**/
SELECT count(*) AS total_films_for_rent
FROM film;
SELECT count(distinct i.film_id) AS film_rented
FROM rental r
join inventory i ON r.inventory_id = i.inventory_id;

/** Repeating as a Subquery **/
SELECT
(SELECT count(*) FROM film) AS total_of_film_for_rent,
(SELECT COUNT(DISTINCT i.film_id) AS films_rented
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
)AS film_rented;

/** Determine the numb. of distincts last name of actore**/
SELECT count(distinct last_name) AS distinct_actor_last_name
FROM actor;

/**10 longest films**/
SELECT title, length
FROM film
ORDER by length desc
LIMIT 10;

/** Using filtering technique**/
SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'SCARLETT';

////** BONUS***/
//** all movies with ARMAGEDDON in title and > 100 mints**/
SELECT film_id, title, length
FROM film
WHERE title like "%ARMAGEDDON%"
 AND length > 100;
 
 /** numb of movie with behind d scenes**/
  SELECT * from Film;
  
 SELECT count(*) AS behind_the_scene_count
 FROM film
 WHERE special_features like  "%Behind the Scenes";
 

 
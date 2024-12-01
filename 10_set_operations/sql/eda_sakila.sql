DESC;

SELECT
	*
FROM
	main.film;

DESC TABLE main.film;

SELECT 
	COUNT(*) AS number_movies,
	COUNT(DISTINCT title) AS unique_number_movies
FROM
	main.film;

SELECT
	*
FROM
	main.film;

SELECT
	DISTINCT rating
FROM
	main.film;

SELECT
	*
FROM
	main.film_actor;

DESC TABLE main.film_actor;

SELECT
	*
FROM
	main.actor;

SELECT
	*
FROM
	main.category;

SELECT
	*
FROM
	main.film_category;

SELECT
	*
FROM
	main.customer c
WHERE
	c.first_name LIKE 'D%';

SELECT
	'customer' AS type,
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	c.first_name LIKE 'D%';

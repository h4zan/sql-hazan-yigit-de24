SELECT
	*
FROM
	main.customer c;

SELECT
	'Customer' AS TYPE,
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	c.first_name LIKE 'A%'
UNION 
SELECT
	'Actor' AS TYPE,
	a.first_name,
	a.last_name
FROM
	main.actor a
WHERE
	a.first_name LIKE 'A%';

SELECT
	'Customer' AS TYPE,
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	c.first_name LIKE 'A%'
INTERSECT 
SELECT
	'Actor' AS TYPE,
	a.first_name,
	a.last_name
FROM
	main.actor a
WHERE
	a.first_name LIKE 'A%';

SELECT
	'Customer' AS TYPE,
	c.first_name,
	c.last_name
FROM
	main.customer c
INTERSECT 
SELECT
	'Actor' AS TYPE,
	a.first_name,
	a.last_name
FROM
	main.actor a;

SELECT
	c.first_name,
	c.last_name
FROM
	main.customer c
INTERSECT 
SELECT
	a.first_name,
	a.last_name
FROM
	main.actor a;

SELECT
	'Customer' AS TYPE,
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	c.first_name LIKE 'J%'
	AND c.last_name LIKE 'D%'
	

SELECT
	'Customer' AS TYPE,
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	c.first_name LIKE 'J%'
	AND c.last_name LIKE 'D%'
UNION ALL 
SELECT
	'Actor' AS TYPE,
	a.first_name,
	a.last_name
FROM
	main.actor a 
WHERE
	a.first_name LIKE 'J%'
	AND a.last_name LIKE 'D%'
	

SELECT
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	c.first_name LIKE 'J%'
	AND c.last_name LIKE 'D%'
UNION  
SELECT
	a.first_name,
	a.last_name
FROM
	main.actor a 
WHERE
	a.first_name LIKE 'J%'
	AND a.last_name LIKE 'D%'
	
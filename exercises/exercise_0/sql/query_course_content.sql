SELECT
	*
FROM
	main.course;

SELECT
	content AS exercise
FROM
	main.course
WHERE
	content_type = 'exercise';

SELECT
	content AS lecture
FROM
	main.course
WHERE
	content_type = 'lecture';

SELECT
	*
FROM
	main.course
WHERE
	week = 48;

SELECT
	*
FROM
	main.course
WHERE
	week BETWEEN 47 AND 49;

SELECT
	COUNT(*)
FROM
	main.course
WHERE
	content_type = 'lecture';

SELECT
	COUNT(*)
FROM
	main.course
WHERE
	content_type != 'lecture';

SELECT
	DISTINCT content_type
FROM
	main.course ;

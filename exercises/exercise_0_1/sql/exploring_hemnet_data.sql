SELECT
	*
FROM
	main.hemnet;

SELECT
	COUNT(*)
FROM
	main.hemnet;

DESC;

DESC TABLE hemnet;

SELECT
	*
FROM
	main.hemnet
ORDER BY
	final_price DESC
LIMIT 5;

SELECT
	*
FROM
	main.hemnet
ORDER BY
	final_price
LIMIT 5;

SELECT 
	AVG(final_price) AS average, 
	MIN(final_price) AS min,
	MAX(final_price) AS max,
	MEDIAN(final_price) AS median,
FROM
	main.hemnet;

SELECT
	AVG(price_per_area) AS average_price_per_area,
	MIN(price_per_area) AS min_price_per_area,
	MAX(price_per_area) AS max_price_per_area,
	MEDIAN(price_per_area) AS median_price_per_area
FROM
	main.hemnet;

SELECT
	DISTINCT commune
FROM
	main.hemnet;

SELECT
	COUNT(DISTINCT commune)
FROM
	main.hemnet;

SELECT
	*
FROM
	main.hemnet
WHERE
	final_price > 10000000;

SELECT
	COUNT(*)
FROM
	main.hemnet
WHERE
	final_price > 10000000;

SELECT
	COUNT(*)/ 500 * 100 AS percent_over_10M
FROM
	main.hemnet
WHERE
	final_price > 10000000;

---------------

SELECT
	( COUNT(*) * 100.0 / (
	SELECT
		COUNT(*)
	FROM
		main.hemnet) )AS percentage_over_10M
FROM
	main.hemnet
WHERE
	final_price > 10000000
